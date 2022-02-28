import 'package:flutter/material.dart';
import 'screen_arg.dart';

class Detail1Screen extends StatelessWidget {
  const Detail1Screen({Key? key}) : super(key: key);
  static const routeName = '/detail1';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
          leading: Tooltip(
            message: 'Back',
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
              ),
            ),
          ),
        ),
        body: Center(
          child: args.message != ""
              ? Text(args.message)
              : Text("There is no ${args.title}"),
        ),
      ),
    );
  }
}
