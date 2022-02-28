import 'package:flutter/material.dart';
import 'package:multipage/widgets/detail1.dart';
import 'package:multipage/widgets/detail2.dart';
import './widgets/text_field_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multipage App',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Multipage Assignment'),
      routes: {
        Detail1Screen.routeName: (context) => const Detail1Screen(),
        Detail2Screen.routeName: (context) => const Detail2Screen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFieldForm(
            controller: myController1,
            path: Detail1Screen.routeName,
            pageName: "Detail 1",
            placeholder: "Enter your detail 1",
            color: Colors.lightGreen,
          ),
          TextFieldForm(
            controller: myController2,
            path: Detail2Screen.routeName,
            pageName: "Detail 2",
            placeholder: "Enter your detail 2",
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
