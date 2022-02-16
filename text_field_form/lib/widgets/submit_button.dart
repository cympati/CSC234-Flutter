import 'package:flutter/material.dart';

class MySubmitButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController email;
  final TextEditingController passwd;

  const MySubmitButton({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.email,
    required this.passwd,
  })  : _formKey = formKey,
        super(key: key);

// Cympati@gmail.com
// Pk10281816.
  checkValidation(key, ct, em, pw) {
    if (key.currentState!.validate()) {
      showDialog(
        context: ct,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${em.text}",
                  ),
                  Text("${pw.text}"),
                  const SizedBox(height: 10),
                  const Text(
                    "Your messages are submitted!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: ElevatedButton(
            onPressed: () {
              checkValidation(_formKey, context, email, passwd);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              width: 100,
              child: const Text(
                'Submit',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
