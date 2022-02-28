import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget hearts = Container(
      child: Row(
        children: const [
          Icon(
            Icons.favorite,
            size: 20.0,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.favorite,
            size: 20.0,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.favorite,
            color: Colors.blueAccent,
            size: 20.0,
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 20.0,
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 20.0,
          ),
        ],
      ),
    );

    Widget titleSection = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 25),
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              hearts,
              const Text(
                '10K results',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 0),
          child: Text(
            'Solution means',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );

    Color color = Colors.purple[800]!;
    final buttons = [
      _buildButtonColumn(color, Icons.access_time_outlined, 'TIME: \n\n 250ms'),
      _buildButtonColumn(color, Icons.search, 'ITEM: \n\n 10K'),
      _buildButtonColumn(color, Icons.panorama_photosphere, 'MEANNG: \n\n 2+')
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
        '1. a means of solving a problem or dealing with a difficult situation. \n2. a liquid mixture in which the minor component (the solute) is uniformly distributed within the major component (the solvent).',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 24,
          // fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Basic layout with interactive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'What is the solution?',
            textAlign: TextAlign.start,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 1000,
          padding:
              const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 450,
                          child: Column(
                            children: [
                              titleSection,
                              textSection,
                              buttonSection,
                            ],
                          ),
                        ),
                        const ImageChanging(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
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
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageChanging extends StatefulWidget {
  const ImageChanging({Key? key}) : super(key: key);

  @override
  _ImageChangingState createState() => _ImageChangingState();
}

class _ImageChangingState extends State<ImageChanging> {
  var images = ['assets/images/Capture.jpg', 'assets/images/Capturescr.PNG'];
  int i = 0;
  handleTab() {
    if (i == 0) {
      setState(() {
        i++;
      });
    } else {
      setState(() {
        i--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        handleTab();
      },
      child: Image.asset(
        images[i],
      ),
    );
  }
}
