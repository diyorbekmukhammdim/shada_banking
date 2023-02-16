import 'package:flutter/material.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/16/2023 Time : 19:20
/// Project : shada_banking
/// Package : lib/widgets/Azimjon

typedef stringValue = String Function(String);

class AppKeyboard extends StatefulWidget {
  final stringValue;

  const AppKeyboard({Key? key, this.stringValue}) : super(key: key);

  @override
  State<AppKeyboard> createState() => _AppKeyboardState();
}

class _AppKeyboardState extends State<AppKeyboard> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("1"),
            keyboardButton("2"),
            keyboardButton("3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("4"),
            keyboardButton("5"),
            keyboardButton("6"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("7"),
            keyboardButton("8"),
            keyboardButton("9"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton(""),
            keyboardButton("0"),
            keyboardButton("<"),
          ],
        ),
      ],
    );
  }

  Widget keyboardButton(String element) {
    if (element.isEmpty) {
      return const SizedBox(
        width: 120,
        height: 120,
      );
    } else {
      return InkWell(
        onTap: () {
          if (element == "<") {
            if (text.isNotEmpty) {
              text = text.substring(0, text.length - 1);
            }
          } else {
            if (text.length < 4) {
              text += element;
            }
          }
          widget.stringValue(text);
        },
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90),
        ),
        child: SizedBox(
          width: 100,
          height: 100,
          child: Center(
            child: Text(
              element,
              style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
            ),
          ),
        ),
      );
    }
  }
}
