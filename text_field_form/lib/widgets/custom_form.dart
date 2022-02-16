import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'submit_button.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  RegExp emailForm = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
      caseSensitive: false);

  RegExp passwordForm = RegExp(r"(?=.*\d)(?=.*[A-Z])");

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
    // Clean up all of form
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyCustomTextField(
              icon: Icons.email,
              regExp: emailForm,
              autoFocus: false,
              obscureText: "Email",
              controller: _emailController,
            ),
            MyCustomTextField(
              icon: Icons.vpn_key,
              regExp: passwordForm,
              autoFocus: true,
              obscureText: "Password",
              controller: _passwordController,
            ),
            MySubmitButton(
              formKey: _formKey,
              email: _emailController,
              passwd: _passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
