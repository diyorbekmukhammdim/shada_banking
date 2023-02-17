import 'package:flutter/material.dart';
import 'package:shada_banking/screens/auth/screen_pin_code.dart';

import '../../utils/phoneFormat.dart';

class PhoneNumberFieldScreen extends StatefulWidget {
  const PhoneNumberFieldScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberFieldScreen> createState() => _PhoneNumberFieldScreenState();
}

class _PhoneNumberFieldScreenState extends State<PhoneNumberFieldScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    controller.text = "+998";
    controller.addListener(() {

    });
    super.initState();
  }

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
                  height: 60,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                    maxLines: 1,
                    keyboardType: TextInputType.phone,
                    controller: controller,
                    inputFormatters: [UzbekCodeTextInputFormatter()],
                    style: const TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    decoration: const InputDecoration.collapsed(
                        border: InputBorder.none,
                        hintText: '+998 00 000 0000',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => const PinCodeScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff21ae7a),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: const Center(
                      child: Text(
                        "Kodni yuborish",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Flexible(flex: 2, child: Column()),
              ],
            )));
  }

// @override
// void dispose() {
//   controller.dispose();
//   super.dispose();
// }
}
