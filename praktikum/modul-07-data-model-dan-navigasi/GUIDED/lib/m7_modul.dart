// import 'package:flutter/material.dart';

// class Mahasiswa {
//   final String nama, nim;
//   final int umur;

//   const Mahasiswa({required this.nama, required this.nim, required this.umur});

//   factory Mahasiswa.fromJson(Map<String, dynamic> json) {
//     return Mahasiswa(
//       nama: json['nama'],
//       nim: json['nim'],
//       umur: int.parse(json['umur'].toString()),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'nama': nama, 'nim': nim, 'umur': umur};
//   }
// }

// class M7Modul extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Mahasiswa dataMahasiswa = Mahasiswa(
//       nama: "Izzan",
//       nim: "103122400009",
//       umur: 19,
//     );

//     print(dataMahasiswa);

//     Map<String, dynamic> dataJson = {
//       'nama': 'Surya',
//       'nim': '103122400061',
//       'umur': 20,
//     };

//     Mahasiswa dataFromJson = Mahasiswa.fromJson(dataJson);

//     print(dataFromJson);

//     Map<String, dynamic> dataToJson = dataFromJson.toJson();
//     print(dataToJson);

//     return const Placeholder();
//   }
// }