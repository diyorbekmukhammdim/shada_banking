import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shada_banking/screens/auth/languageScreen.dart';

class InstallPage extends StatefulWidget {
  static const route = "install";

  const InstallPage({Key? key}) : super(key: key);

  @override
  State<InstallPage> createState() => _InstallPageState();
}

class _InstallPageState extends State<InstallPage> {

  @override
  void initState()  {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LanguageScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Lottie.asset("assets/lottie/splash_white.json"),
      ),
    );
  }
}
