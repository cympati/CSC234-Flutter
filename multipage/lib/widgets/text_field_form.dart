import 'package:flutter/material.dart';
import 'screen_arg.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    Key? key,
    required this.controller,
    required this.path,
    required this.pageName,
    required this.placeholder,
    required this.color,
  }) : super(key: key);

  final TextEditingController controller;
  final String path;
  final String pageName;
  final String placeholder;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: placeholder),
              controller: controller,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color,
                fixedSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  path,
                  arguments: ScreenArguments(
                    pageName,
                    controller.text,
                  ),
                );
              },
              child: const Text('Show')),
        )
      ],
    );
  }
}
