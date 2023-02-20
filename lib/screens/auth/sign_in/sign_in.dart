import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/auth/logo.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var firstController = TextEditingController();
  bool _isFirstHidden = true;
  var isFirstTextFieldEmpty = true;

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
                      hintText: "Parolni kiriting",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(height: 30),
              Row(children: [
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: BoxDecoration(color: isFirstTextFieldEmpty ? Colors.grey : Colors.green, borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(splashFactory: NoSplash.splashFactory),
                    onPressed: isFirstTextFieldEmpty ? null : () {},
                    focusNode: FocusNode(),
                    child: const Text(
                      "Davom ettirish",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
              ]),
              const SizedBox(height: 50),
              const Text("Parolni unutdingizmi?", style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}
