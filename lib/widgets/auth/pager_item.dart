import 'package:flutter/material.dart';
import '../../screens/auth/intro_page/model/intro_model.dart';

class PagerItem extends StatelessWidget {
  final IntroModel model;

  const PagerItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xFF17A39A),
                  Color(0xFF22AF7B),
                  Color(0xFF17A369)
                ])),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset("assets/images/landing_bg.png",
              fit: BoxFit.fill),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(model.title,
                style: const TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 50),
            Image.asset(
              model.icon,
              height: 130,
              width: 130,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 30),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  model.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}
