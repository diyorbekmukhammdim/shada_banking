import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/auth/password_text_field.dart';
import '../../../widgets/auth/logo.dart';
import '../../../widgets/dialog/custom_dialog.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _isFirstTextFieldText = "";
  var _isSecondTextFieldText = "";

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
              PasswordTextField(
                password: (password) {
                  _isFirstTextFieldText = password;
                  setState(() {});
                  print("screen: $password");
                  print("_isFirstTextFieldText: $_isFirstTextFieldText");
                },
              ),
              const SizedBox(height: 30),
              PasswordTextField(password: (password) {
                _isSecondTextFieldText = password;
                setState(() {});
                print("screen: $password");
                print("_isSecondTextFieldText: $_isSecondTextFieldText");
              }),
              const SizedBox(height: 50),
              Row(children: [
                Expanded(
                    child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: _isFirstTextFieldText.length == 6 && _isSecondTextFieldText.length == 6
                          &&  _isFirstTextFieldText.isNotEmpty && _isSecondTextFieldText.isNotEmpty &&
                       _isFirstTextFieldText == _isSecondTextFieldText
                          ? Colors.green
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(splashFactory: NoSplash.splashFactory),
                    onPressed: _isFirstTextFieldText == _isSecondTextFieldText &&
                        _isFirstTextFieldText.length == 6 && _isSecondTextFieldText.length == 6
                        ? () {
                            customDialog(context, "Internetga ulanishda muammo, ulanishni tekshiring", "assets/images/no_internet.png", "Yangilash",
                                () => {Navigator.of(context).pop()});
                            print(_isFirstTextFieldText);
                            print(_isSecondTextFieldText);
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPinCodeScreen()));
                          }
                        : null,
                    focusNode: FocusNode(),
                    child: const Text(
                      "Davom ettirish",
                      style: TextStyle(color: Colors.white),
                    ),
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
