// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'kalkulator_controller.dart';
// import 'perhitungan.dart';

// class DetailPage extends StatelessWidget {
//   const DetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final c = Get.find<KalkulatorController>();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail Perhitungan'),
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Obx(() {
//           final data = c.terpilih.value;
//           if (data == null) {
//             return const Center(
//               child: Text('Belum ada data', style: TextStyle(fontSize: 18)),
//             );
//           }
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Angka Pertama : ${Perhitungan.format(data.angka1)}',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         'Operasi : ${data.operasi.simbol} '
//                         '(${data.operasi.nama.capitalizeFirst})',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         'Angka Kedua : ${Perhitungan.format(data.angka2)}',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const Divider(height: 24),
//                       Text(
//                         'Hasil : ${Perhitungan.format(data.hasil)}',
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.blue.shade50,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Text(
//                   data.keterangan,
//                   style: const TextStyle(fontSize: 16),
//                 ),
//               ),
//               const SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () => Get.back(),
//                 child: const Text('Kembali'),
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }
