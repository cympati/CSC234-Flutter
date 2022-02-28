import 'package:flutter/material.dart';
import './favorite_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Patiphon Klangpraphan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Computer Science, KMUTT',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Color color = Colors.brown[500]!;
    final buttons = [
      _buildButtonColumn(color, Icons.call, '095-660-0463'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE')
    ];

    Widget buttonSection = SizedBox(
      child: Container(
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buttons.map((button) {
          return Flexible(fit: FlexFit.tight, child: button);
        }).toList()),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        '1. a means of solving a problem or'
        'dealing with a difficult situation.'
        '2. a liquid mixture in which the'
        'minor component (the solute) is'
        'uniformly distributed within the'
        'major component (the solvent).',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Basic layout with interactive',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
                // color: Colors.black,
                ),
          ),
          backgroundColor: Colors.brown[500],
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey[800]!,
                        offset: const Offset(1, 2))
                  ]),
              child: Image.asset(
                'assets/images/b.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
