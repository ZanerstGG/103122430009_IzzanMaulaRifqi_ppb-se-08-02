// import 'package:flutter/material.dart';

// import 'app_type.dart';
// import 'detail_dialog.dart';

// class AppTypeTile extends StatelessWidget {
//   final AppType item;

//   const AppTypeTile({super.key, required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       child: ListTile(
//         leading: CircleAvatar(backgroundColor: item.color),
//         title: Text(
//           item.title,
//           style: const TextStyle(
//             color: Colors.blue,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Text(item.platforms),
//         onTap: () => showAppDetailDialog(context, item),
//       ),
//     );
//   }
// }
