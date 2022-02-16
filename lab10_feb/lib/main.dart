// https://docs.flutter.dev/development/ui/interactive?classId=8643b37f-3800-4b71-b85d-4b11a88fe241&assignmentId=a9225673-123f-4ec9-88ec-7b7ed991ed5d&submissionId=942660c2-b422-041f-2e6d-0dd7927c283c
// https://docs.flutter.dev/development/ui/layout/tutorial?classId=8643b37f-3800-4b71-b85d-4b11a88fe241&assignmentId=a9225673-123f-4ec9-88ec-7b7ed991ed5d&submissionId=942660c2-b422-041f-2e6d-0dd7927c283c

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Samples',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter State Samples App'),
        ),
        body: const Center(child: ParentWidget()),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({Key? key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = true;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxC(
      active: _active,
      onChanged: _handleTapBoxChanged,
    );
  }
}

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;
  const TapBoxC({Key? key, this.active = true, required this.onChanged})
      : super(key: key);

  @override
  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;
  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel, // avoid the errors for long tap
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Avtive' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight
                ? Border.all(color: Colors.blue, width: 10.0)
                : null),
      ),
    );
  }
}

// class TapBoxB extends StatelessWidget {
//   final bool active;
//   final ValueChanged<bool> onChanged;
//   const TapBoxB({Key? key, this.active = true, required this.onChanged})
//       : super(key: key);

//   void _handleTap() {
//     onChanged(!active);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _handleTap,
//       child: Container(
//         child: Center(
//           child: Text(
//             active ? 'Avtive' : 'Inactive',
//             style: const TextStyle(fontSize: 32.0, color: Colors.white),
//           ),
//         ),
//         width: 200,
//         height: 200,
//         decoration: BoxDecoration(
//             color: active ? Colors.lightGreen[700] : Colors.grey[600]),
//       ),
//     );
//   }
// }


// class TapboxA extends StatefulWidget {
//   const TapboxA({Key? key}) : super(key: key);

//   @override
//   _TapboxAState createState() => _TapboxAState();
// }

// class _TapboxAState extends State<TapboxA> {
//   bool _active = false;

//   void _handleTab() {
//     setState(() {
//       _active = !_active; // Toggle
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: _handleTab,
  //     child: Container(
  //       child: Center(
  //         child: Text(
  //           _active ? 'Avtive' : 'Inactive',
  //           style: const TextStyle(fontSize: 32.0, color: Colors.white),
  //         ),
  //       ),
  //       width: 200,
  //       height: 200,
  //       decoration: BoxDecoration(
  //           color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
  //     ),
  //   );
  // }
// }
