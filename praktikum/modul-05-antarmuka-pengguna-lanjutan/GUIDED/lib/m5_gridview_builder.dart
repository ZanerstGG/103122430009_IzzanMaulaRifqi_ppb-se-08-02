// import 'package:flutter/material.dart';

// class M5GridviewBuilder extends StatelessWidget {
//   const M5GridviewBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const items = ['A', 'B', 'C', 'D', 'E', 'F'];

//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 100,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         ),
//         itemCount: items.length,
//       itemBuilder: (context, index) => Container(
//         color: Colors.purple[100 * ((index % 8) + 1)],
//         child: Center(child: Text(items[index])),
//         ),
//     );
//   }
// }
