// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'detail_page.dart';
// import 'penjumlahan_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final c = Get.put(PenjumlahanController());

//     return Scaffold(
//       appBar: AppBar(title: const Text('Kalkulator Penjumlahan')),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: c.formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: c.angka1Controller,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: 'Masukkan Angka Pertama',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return 'Angka pertama tidak boleh kosong';
//                   }
//                   if (int.tryParse(value.trim()) == null) {
//                     return 'Angka pertama harus berupa bilangan bulat';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 controller: c.angka2Controller,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(
//                   labelText: 'Masukkan Angka Kedua',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return 'Angka kedua tidak boleh kosong';
//                   }
//                   if (int.tryParse(value.trim()) == null) {
//                     return 'Angka kedua harus berupa bilangan bulat';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     FocusScope.of(context).unfocus();
//                     c.jumlahkan();
//                   },
//                   child: const Text('Jumlahkan'),
//                 ),
//               ),
//               const SizedBox(height: 24),
//               Obx(
//                 () => Text(
//                   'Jumlah Perhitungan: ${c.jumlahPerhitungan.value}',
//                   style: const TextStyle(fontSize: 16),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Obx(() {
//                 final data = c.penjumlahan.value;
//                 return GestureDetector(
//                   onTap: () => Get.to(() => const DetailPage()),
//                   child: Text(
//                     data == null
//                         ? 'Belum ada data'
//                         : 'Hasil: ${data.hasil} (Tekan untuk detail)',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       decoration: TextDecoration.underline,
//                       color: data == null ? Colors.grey.shade700 : Colors.blue,
//                       decorationColor: data == null
//                           ? Colors.grey.shade700
//                           : Colors.blue,
//                     ),
//                   ),
//                 );
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
