// import 'package:flutter/material.dart';

// import 'app_type.dart';

// Future<void> showAppDetailDialog(BuildContext context, AppType item) {
//   return showDialog<void>(
//     context: context,
//     builder: (dialogContext) {
//       return AlertDialog(
//         title: const Text('Detail'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               item.title,
//               style: const TextStyle(
//                 color: Colors.blue,
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 12),
//             Text(item.platforms),
//             Text(item.languages),
//           ],
//         ),
//         actions: [
//           TextButton(
//             style: TextButton.styleFrom(foregroundColor: Colors.green),
//             onPressed: () => Navigator.of(dialogContext).pop(),
//             child: const Text('Close'),
//           ),
//         ],
//       );
//     },
//   );
// }
