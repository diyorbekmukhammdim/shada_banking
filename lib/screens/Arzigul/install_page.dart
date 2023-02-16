import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InstallPage extends StatefulWidget {
  const InstallPage({Key? key}) : super(key: key);

  @override
  State<InstallPage> createState() => _InstallPageState();
}

class _InstallPageState extends State<InstallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Lottie.asset("assets/Arzigul/lottie/splash_white.json"),
      ),
    );
  }
}
