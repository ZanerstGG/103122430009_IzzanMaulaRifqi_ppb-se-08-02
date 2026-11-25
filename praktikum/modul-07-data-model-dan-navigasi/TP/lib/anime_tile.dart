// import 'package:flutter/material.dart';

// import 'anime.dart';
// import 'detail_page.dart';

// class AnimeTile extends StatelessWidget {
//   final Anime anime;

//   const AnimeTile({super.key, required this.anime});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//       child: ListTile(
//         leading: CircleAvatar(backgroundColor: anime.color),
//         title: Text(
//           anime.title,
//           style: TextStyle(
//             color: anime.color,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailPage(anime: anime),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
