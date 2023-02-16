import 'package:flutter/cupertino.dart';


class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo.png",
      width: 200,
      height: 200,
    );
  }

}
