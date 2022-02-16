
// class LayoutExercise extends StatefulWidget {
//   const LayoutExercise({Key? key}) : super(key: key);

//   @override
//   _LayoutExerciseState createState() => _LayoutExerciseState();
// }

// class _LayoutExerciseState extends State<LayoutExercise> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(1, 2),
//           )
//         ],
//         border: Border.all(color: Colors.grey.shade400, width: 6),
//       ),
//       padding: const EdgeInsets.all(6),
//       width: 300,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           _partOne(),
//           const SizedBox(height: 16),
//           _partTwo(),
//           const SizedBox(height: 16),
//           _partThree(),
//         ],
//       ),
//     );
//   }

//   // Part 1
//   Widget _partOne() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Padding(
//           padding: EdgeInsets.only(right: 8),
//           child: Icon(
//             Icons.account_circle,
//             size: 50,
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'Flutter McFlutter',
//               style: Theme.of(context).textTheme.headline5,
//             ),
//             Text(
//               'Experienced App Developer',
//               style: Theme.of(context).textTheme.subtitle1,
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   // Part 2
//   Widget _partTwo() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           '123 Main Street',
//           style: Theme.of(context).textTheme.subtitle1,
//         ),
//         Text(
//           '(415) 555-0198',
//           style: Theme.of(context).textTheme.subtitle1,
//         ),
//       ],
//     );
//   }

//   // Part 3
//   Widget _partThree() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: const [
//         Icon(Icons.accessibility),
//         Icon(Icons.timer),
//         Icon(Icons.phone_android),
//         Icon(Icons.phone_iphone),
//       ],
//     );
//   }
// }
