// import 'package:flutter/material.dart';

// import 'anime.dart';

// class DetailPage extends StatelessWidget {
//   final Anime anime;

//   const DetailPage({super.key, required this.anime});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: anime.color,
//         title: Text(anime.title, overflow: TextOverflow.ellipsis),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Text(
//                     anime.title,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: anime.color,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   Text(
//                     anime.category,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     anime.description,
//                     textAlign: TextAlign.justify,
//                     style: const TextStyle(fontSize: 14, height: 1.5),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 16),
//             child: TextButton(
//               style: TextButton.styleFrom(foregroundColor: Colors.blue),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('KEMBALI'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
