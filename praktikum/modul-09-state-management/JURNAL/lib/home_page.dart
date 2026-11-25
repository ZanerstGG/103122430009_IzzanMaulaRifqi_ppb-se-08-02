// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'detail_page.dart';
// import 'kalkulator_controller.dart';
// import 'perhitungan.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final c = Get.put(KalkulatorController());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kalkulator'),
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           Form(
//             key: c.formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: c.angka1Controller,
//                   keyboardType: const TextInputType.numberWithOptions(
//                     decimal: true,
//                     signed: true,
//                   ),
//                   decoration: const InputDecoration(
//                     labelText: 'Angka Pertama',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Angka pertama wajib diisi';
//                     }
//                     if (double.tryParse(value.trim()) == null) {
//                       return 'Angka pertama harus berupa angka';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: c.angka2Controller,
//                   keyboardType: const TextInputType.numberWithOptions(
//                     decimal: true,
//                     signed: true,
//                   ),
//                   decoration: const InputDecoration(
//                     labelText: 'Angka Kedua',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Angka kedua wajib diisi';
//                     }
//                     if (double.tryParse(value.trim()) == null) {
//                       return 'Angka kedua harus berupa angka';
//                     }
//                     return null;
//                   },
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: Operasi.values.map((operasi) {
//               return Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 4),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       FocusScope.of(context).unfocus();
//                       c.hitung(operasi);
//                     },
//                     child: Text(
//                       operasi.simbol,
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           const SizedBox(height: 24),
//           Row(
//             children: [
//               const Expanded(
//                 child: Text(
//                   'Riwayat Perhitungan',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Obx(
//                 () => IconButton(
//                   tooltip: 'Hapus semua riwayat',
//                   icon: const Icon(Icons.delete_sweep),
//                   onPressed: c.riwayat.isEmpty ? null : c.hapusSemua,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Obx(() {
//             if (c.riwayat.isEmpty) {
//               return const Padding(
//                 padding: EdgeInsets.only(top: 48),
//                 child: Center(
//                   child: Text('Belum ada data', style: TextStyle(fontSize: 16)),
//                 ),
//               );
//             }
//             return Column(
//               children: c.riwayat.map((data) {
//                 return Card(
//                   child: ListTile(
//                     title: Text(
//                       data.teks,
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                     trailing: IconButton(
//                       tooltip: 'Hapus riwayat',
//                       icon: const Icon(Icons.delete),
//                       onPressed: () => c.hapus(data),
//                     ),
//                     onTap: () {
//                       c.lihatDetail(data);
//                       Get.to(() => const DetailPage());
//                     },
//                   ),
//                 );
//               }).toList(),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }
