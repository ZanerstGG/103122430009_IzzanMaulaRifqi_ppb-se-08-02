// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'penjumlahan.dart';

// class PenjumlahanController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//   final angka1Controller = TextEditingController();
//   final angka2Controller = TextEditingController();

//   final penjumlahan = Rxn<Penjumlahan>();
//   final jumlahPerhitungan = 0.obs;

//   void jumlahkan() {
//     if (!formKey.currentState!.validate()) {
//       return;
//     }

//     final data = Penjumlahan(
//       angka1: int.parse(angka1Controller.text.trim()),
//       angka2: int.parse(angka2Controller.text.trim()),
//     );

//     penjumlahan.value = data;
//     jumlahPerhitungan.value++;

//     Get.snackbar(
//       'Berhasil',
//       'Proses penjumlahan berhasil dilakukan '
//           '(${data.angka1} + ${data.angka2} = ${data.hasil})',
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.green.shade100,
//       colorText: Colors.black87,
//       margin: const EdgeInsets.all(12),
//     );
//   }

//   @override
//   void onClose() {
//     angka1Controller.dispose();
//     angka2Controller.dispose();
//     super.onClose();
//   }
// }
