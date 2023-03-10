import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/auth/indecator_dot.dart';
import 'package:shada_banking/widgets/auth/keyboard.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/17/2023 Time : 17:21
/// Project : shada_banking
/// Package : lib/screens/auth

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
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
            Center(child: SizedBox(width: 145, height: 145, child: Image.asset("assets/images/logo_light.png"))),
            const Center(
              child: Text(
                "PIN kiriting",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
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
            GestureDetector(
              onTap: () {
                print("click  PIN qayta o'rnatish"); //TODO
              },
              child: const Center(
                child: Text(
                  "PIN qayta o'rnatish",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16, decoration: TextDecoration.underline),
                ),
              ),
            ),
            AppKeyboard(stringValue: (value) {
              setState(() {});
              return _pinCode = value;
            })
          ],
        ),
      ),
    );
  }
}
