import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  final IconData icon;
  final RegExp regExp;
  final bool autoFocus;
  final String obscureText;
  final TextEditingController controller;

  const MyCustomTextField({
    Key? key,
    required this.icon,
    required this.regExp,
    required this.autoFocus,
    required this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: const TextStyle(fontSize: 16),
          decoration:
              InputDecoration(hintText: obscureText, prefixIcon: Icon(icon)),
          obscureText: obscureText == "Password" ? true : false,
          controller: controller,
          autofocus: autoFocus,
          validator: (value) {
            if (value != null && !regExp.hasMatch(value)) {
              return 'Your $obscureText is invalid';
            }
            return null;
          },
        ),
      ),
    );
  }
}
