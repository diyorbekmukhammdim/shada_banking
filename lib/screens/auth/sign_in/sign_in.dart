import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/auth/logo.dart';
import 'package:shada_banking/widgets/auth/password_text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String _passwordTextField = "";

  @override
  void initState() {
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
              PasswordTextField(hintText: "Parolni kiriting", password: (password){
                _passwordTextField = password;
                setState(() {});
              }),
              const SizedBox(height: 30),
              Row(children: [
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: _passwordTextField.isNotEmpty && _passwordTextField.length == 6 ?
                  Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(splashFactory: NoSplash.splashFactory),
                    onPressed: _passwordTextField.length == 6 ? () {
                      //keyingi oyna ochilishi shu joyda yoziladi
                    } : null,
                    focusNode: FocusNode(),
                    child: const Text(
                      "Davom ettirish",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
              ]),
              const SizedBox(height: 50),
              const Text("Parolni unutdingizmi?", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}
