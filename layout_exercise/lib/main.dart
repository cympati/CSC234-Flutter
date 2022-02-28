//https://docs.flutter.dev/codelabs/layout-basics?classId=8643b37f-3800-4b71-b85d-4b11a88fe241&assignmentId=b0145ee2-a0a7-4e3b-b150-7f4e908b4c0c&submissionId=eebb228d-d68c-52a6-9b93-e4149a80aeac

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Exercise',
      home: Scaffold(
        body: Center(child: _layoutExercise(context)),
        backgroundColor: Colors.black,
      ),
      theme: ThemeData(
        textTheme: const TextTheme(
            // Optional
            // subtitle1: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.5),
            // headline5: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.6),
            ),
      ),
    );
  }

  Widget _layoutExercise(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(1, 2),
          )
        ],
        border: Border.all(color: Colors.grey.shade400, width: 6),
      ),
      padding: const EdgeInsets.all(6),
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _partOne(context),
          const SizedBox(height: 16),
          _partTwo(context),
          const SizedBox(height: 16),
          _partThree(),
          _test(),
        ],
      ),
    );
  }

  // Part 1
  Widget _partOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(
            Icons.account_circle,
            size: 50,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Flutter McFlutter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Experienced App Developer',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ],
    );
  }

  // Part 2
  Widget _partTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '123 Main Street',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          '(415) 555-0198',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }

  // Part 3
  Widget _partThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Icon(Icons.accessibility),
        Icon(Icons.timer),
        Icon(Icons.phone_android),
        Icon(Icons.phone_iphone),
      ],
    );
  }

  Widget _test() {
return Row(​
  crossAxisAlignment: CrossAxisAlignment.center,​
  children: [​
    Expanded(​
      child: Image.asset('images/pic1.jpg'),​
    ),​
    Expanded(​
      flex: 2,​
      child: Image.asset('images/pic2.jpg'),​
    ),​
    Expanded(​
      child: Image.asset('images/pic3.jpg'),​
    ),
  ],
);

//     final descTextStyle = TextStyle(​
//   color: Colors.black,​
//   fontWeight: FontWeight.w800,​
//   fontFamily: 'Roboto',​
//   letterSpacing: 0.5,​
//   fontSize: 18,​
//   height: 2,​
// );​


// final iconList = DefaultTextStyle.merge(​
//   style: descTextStyle,​
//   child: Container(​
//     padding: EdgeInsets.all(20),​
//     child: Row(​
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,​
//       children: [​
//         Column(​
//           children: [​
//             Icon(Icons.kitchen, color: Colors.green[500]),​
//             Text('PREP:'),​
//             Text('25 min'),​
//           ],​
//         ),​
//         Column(​
//           children: [​
//             Icon(Icons.timer, color: Colors.green[500]),​
//             Text('COOK:'),​
//             Text('1 hr'),​
//           ],​
//         ),​
//         Column(​
//           children: [​
//             Icon(Icons.restaurant, color: Colors.green[500]),​
//             Text('FEEDS:'),​
//             Text('4-6'),​
//           ],​
//         ),​
//       ],​
//     ),​
//   ),​
  
// );

  }
}
