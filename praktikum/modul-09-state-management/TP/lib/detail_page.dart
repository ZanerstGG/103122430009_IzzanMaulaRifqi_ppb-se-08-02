// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'penjumlahan_controller.dart';

// class DetailPage extends StatelessWidget {
//   const DetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final c = Get.find<PenjumlahanController>();

//     return Scaffold(
//       appBar: AppBar(title: const Text('Detail Penjumlahan')),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Obx(() {
//                 final data = c.penjumlahan.value;
//                 if (data == null) {
//                   return const Text(
//                     'Belum ada data',
//                     style: TextStyle(fontSize: 18),
//                   );
//                 }
//                 return Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Angka Pertama : ${data.angka1}',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         'Angka Kedua : ${data.angka2}',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const Divider(height: 24),
//                       Text(
//                         'Hasil Penjumlahan : ${data.hasil}',
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () => Get.back(),
//                 child: const Text('Kembali'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
