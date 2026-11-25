// enum Operasi {
//   tambah('+', 'penjumlahan'),
//   kurang('-', 'pengurangan'),
//   kali('×', 'perkalian'),
//   bagi('÷', 'pembagian');

//   final String simbol;
//   final String nama;

//   const Operasi(this.simbol, this.nama);
// }

// class Perhitungan {
//   final double angka1;
//   final double angka2;
//   final Operasi operasi;
//   final double hasil;

//   Perhitungan({
//     required this.angka1,
//     required this.angka2,
//     required this.operasi,
//   }) : hasil = switch (operasi) {
//          Operasi.tambah => angka1 + angka2,
//          Operasi.kurang => angka1 - angka2,
//          Operasi.kali => angka1 * angka2,
//          Operasi.bagi => angka1 / angka2,
//        };

//   static String format(double angka) {
//     if (angka == angka.truncateToDouble()) {
//       return angka.toInt().toString();
//     }
//     return double.parse(angka.toStringAsFixed(4)).toString();
//   }

//   String get teks =>
//       '${format(angka1)} ${operasi.simbol} ${format(angka2)} = ${format(hasil)}';

//   String get keterangan =>
//       'Hasil ${operasi.nama} antara ${format(angka1)} dan '
//       '${format(angka2)} adalah ${format(hasil)}';
// }
