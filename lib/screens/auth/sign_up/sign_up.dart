import 'package:flutter/material.dart';
import '../../../widgets/auth/logo.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var firstController = TextEditingController();
  var secondController = TextEditingController();
  bool _isFirstHidden = true;
  bool _isSecondHidden = true;
  var isFirstTextFieldEmpty = true;
  var isSecondTextFieldEmpty = true;

  @override
  void initState() {
    firstController.addListener(() {
      if (firstController.text.isNotEmpty) {
        isFirstTextFieldEmpty = false;
      } else {
        isFirstTextFieldEmpty = true;
      }
      setState(() {});
    });
    secondController.addListener(() {
      if (secondController.text.isNotEmpty) {
        isSecondTextFieldEmpty = false;
      } else {
        isSecondTextFieldEmpty = true;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Logo(),
              const SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                child: TextField(
                  maxLines: 1,
                  obscureText: _isFirstHidden,
                  cursorColor: Colors.green,
                  textAlign: TextAlign.center,
                  controller: firstController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        focusColor: Colors.green,
                        onPressed: () {
                          setState(() {
                            _isFirstHidden = !_isFirstHidden;
                          });
                        },
                        icon: _isFirstHidden
                            ? const Icon(Icons.visibility_off, color: Colors.green)
                            : const Icon(Icons.visibility, color: Colors.green),
                      ),
                      hintText: "Yangi parolni kiriting",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                child: TextField(
                  maxLines: 1,
                  obscureText: _isSecondHidden,
                  cursorColor: Colors.green,
                  textAlign: TextAlign.center,
                  controller: secondController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        focusColor: Colors.green,
                        onPressed: () {
                          setState(() {
                            _isSecondHidden = !_isSecondHidden;
                          });
                        },
                        icon: _isSecondHidden
                            ? const Icon(Icons.visibility_off, color: Colors.green)
                            : const Icon(Icons.visibility, color: Colors.green),
                      ),
                      hintText: "Yangi parolni takrorlang",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(height: 50),
              Row(children: [
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: isFirstTextFieldEmpty || isSecondTextFieldEmpty ? Colors.grey : Colors.green, borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory
                    ),
                      onPressed: isFirstTextFieldEmpty && isSecondTextFieldEmpty ? null : () {},
                    focusNode: FocusNode(),
                      child: const Text("Davom ettirish", style: TextStyle(color: Colors.white),),
                  ),
                ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
