// import 'package:flutter/material.dart';

// class M5GridviewCount extends StatelessWidget {
//   const M5GridviewCount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const items = ['A', 'B', 'C', 'D', 'E', 'F'];

//     return GridView.count(
//       crossAxisCount: 2,
//       children: [
//         for (var i = 0; i < 100; i++)
//           Container(
//             color: Colors.purple[100 * ((i % 8) + 1)],
//             alignment: Alignment.center,
//             child: Text(items[i % items.length]),
//           ),
//       ],
//     );
//   }
// }
