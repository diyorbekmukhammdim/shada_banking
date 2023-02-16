import 'package:flutter/material.dart';

import '../../widgets/Azimjon/indecator_dot.dart';
import '../../widgets/Azimjon/keyboard.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/16/2023 Time : 19:22
/// Project : shada_banking
/// Package : lib/screens/Azimjon

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            Center(child: SizedBox(width: 180, height: 180, child: Image.asset("assets/images/logo_light.png"))),
            const Center(
              child: Text(
                "4 xonali Pin-kod yarating",
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
