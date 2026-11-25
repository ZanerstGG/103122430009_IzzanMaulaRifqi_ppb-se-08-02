// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'perhitungan.dart';

// class KalkulatorController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//   final angka1Controller = TextEditingController();
//   final angka2Controller = TextEditingController();

//   final riwayat = <Perhitungan>[].obs;
//   final terpilih = Rxn<Perhitungan>();

//   void hitung(Operasi operasi) {
//     if (!formKey.currentState!.validate()) {
//       return;
//     }

//     final angka1 = double.parse(angka1Controller.text.trim());
//     final angka2 = double.parse(angka2Controller.text.trim());

//     if (operasi == Operasi.bagi && angka2 == 0) {
//       tampilkanSnackbar(
//         'Gagal',
//         'Tidak dapat melakukan pembagian dengan nol',
//         Colors.red,
//       );
//       return;
//     }

//     final data = Perhitungan(angka1: angka1, angka2: angka2, operasi: operasi);
//     riwayat.add(data);

//     tampilkanSnackbar(
//       'Berhasil',
//       'Perhitungan berhasil dilakukan (${data.teks})',
//       Colors.green,
//     );
//   }

//   void lihatDetail(Perhitungan data) {
//     terpilih.value = data;
//   }

//   void hapus(Perhitungan data) {
//     riwayat.remove(data);
//     tampilkanSnackbar('Berhasil', 'Riwayat berhasil dihapus', Colors.blue);
//   }

//   void hapusSemua() {
//     riwayat.clear();
//     tampilkanSnackbar(
//       'Berhasil',
//       'Seluruh riwayat berhasil dihapus',
//       Colors.blue,
//     );
//   }

//   void tampilkanSnackbar(String judul, String pesan, Color warna) {
//     Get.snackbar(
//       judul,
//       pesan,
//       backgroundColor: warna,
//       colorText: Colors.white,
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
