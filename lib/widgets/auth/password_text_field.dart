import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final Function(String password) password;

  const PasswordTextField({Key? key, required this.hintText, required this.password}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _controller = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void initState() {
    _controller.addListener(() {
      widget.password(_controller.text);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Stack(children: [
        TextField(
          maxLines: 1,
          obscureText: _isPasswordHidden,
          cursorColor: Colors.green,
          textAlign: TextAlign.center,
          controller: _controller,
          maxLength: 6,
          buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: IconButton(
            focusColor: Colors.green,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                _isPasswordHidden = !_isPasswordHidden;
              });
            },
            icon: _isPasswordHidden ? const Icon(Icons.visibility_off, color: Colors.green) : const Icon(Icons.visibility, color: Colors.green),
          ),
        )
      ]),
    );
  }
}
