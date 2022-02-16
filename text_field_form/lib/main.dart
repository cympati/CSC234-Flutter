import 'package:flutter/material.dart';
import 'widgets/custom_form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField/TextFormField App",
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}
