import 'package:flutter/material.dart';
import 'package:shada_banking/screens/auth/intro_page/intro_page.dart';
import 'package:shada_banking/screens/card/screen_add_card.dart';
import 'package:shada_banking/screens/main/main_Screen.dart';
import '../../widgets/auth/indecator_dot.dart';
import '../../widgets/auth/keyboard.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/16/2023 Time : 19:22
/// Project : shada_banking
/// Package : lib/screens

class NewPinCodeScreen extends StatefulWidget {
  const NewPinCodeScreen({Key? key}) : super(key: key);

  @override
  State<NewPinCodeScreen> createState() => _NewPinCodeScreenState();
}

class _NewPinCodeScreenState extends State<NewPinCodeScreen> {
  String _pinCode = "";
  late final Function(String element) onTap;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            Center(
                child: SizedBox(
                    width: 145,
                    height: 145,
                    child:
                        Image.asset("assets/images/logo_light.png"))),
            const Center(
              child: Text(
                "4 xonali Pin-kod yarating",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pinCodeDot(_pinCode.isNotEmpty),
                pinCodeDot(_pinCode.length >= 2),
                pinCodeDot(_pinCode.length >= 3),
                pinCodeDot(_pinCode.length >= 4),
              ],
            ),
            AppKeyboard(stringValue: (value) {
              setState(() {});
              if((value as String).length >= 4)  Navigator.push(context,  MaterialPageRoute(builder: (context) => const AddCardScreen()));
              return _pinCode = value;
            })
          ],
        ),
      ),
    );
  }
}
