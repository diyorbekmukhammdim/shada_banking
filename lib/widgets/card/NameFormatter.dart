import 'package:flutter/services.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/20/2023 Time : 16:11
/// Project : shada_banking
/// Package : lib/widgets/card

class NameFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = "";

    List<String> chars = newValue.text.split("");

    for (int i = 0; i < newValue.text.length; i++) {
      if (i <= 25) {
        text += chars[i];
      }
    }
    return TextEditingValue(text: text, selection: TextSelection.collapsed(offset: text.length));
  }
}
