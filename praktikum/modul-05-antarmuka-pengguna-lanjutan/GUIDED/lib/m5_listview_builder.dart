// import 'package:flutter/material.dart';

// class M5ListviewBuilder extends StatelessWidget {
//   const M5ListviewBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List items = ['A', 'B', 'C', 'D', 'E', 'F'];

//     return ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) => Container(
//         color: Colors.grey[100 * ((index % 8) + 1)],
//         height: 200,
//         child: Text("Entry ${items[index]}"),
//       ),
//     );
//   }
// }