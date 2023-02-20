import 'package:flutter/services.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/20/2023 Time : 16:11
/// Project : shada_banking
/// Package : lib/widgets/card

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = "";

    List<String> chars = newValue.text.split("");
    List<int> codes = chars.map((char) => char.codeUnitAt(0)).toList();

    for (int i = 0; i < newValue.text.length; i++) {
      if (codes[i] >= 48 && codes[i] <= 57 && i <= 4) {
        if (text.length == 2) text += "/";
        text += chars[i];
      }
    }
    return TextEditingValue(text: text, selection: TextSelection.collapsed(offset: text.length));
  }
}