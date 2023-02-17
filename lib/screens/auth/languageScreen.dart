import 'package:flutter/material.dart';
import 'package:shada_banking/screens/auth/phoneNumberFieldScreen.dart';

class LanguageScreen extends StatefulWidget {
  static const routes = "Language";
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Center(
              child: Image(
                  width: 100,
                  image: AssetImage("assets/images/logo_light.png"))),
          const SizedBox(
            height: 20,
          ),
          button("O'zbekcha", () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => const PhoneNumberFieldScreen()));
          }),
          const SizedBox(
            height: 20,
          ),
          button("Русский", () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => const PhoneNumberFieldScreen()));
          }),
          Flexible(flex: 2, child: Column()),
        ],
      ),
    ));
  }

  Widget button(String text, void click()) {
    return GestureDetector(
      onTap: click,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
