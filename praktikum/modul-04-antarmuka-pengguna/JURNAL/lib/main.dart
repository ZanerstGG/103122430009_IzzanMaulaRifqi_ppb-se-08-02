// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color(0xFFFFF7FF),
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFFFF7FF),
//           elevation: 0,
//           leading: const Padding(
//             padding: EdgeInsets.all(8),
//             child: CircleAvatar(
//               backgroundColor: Colors.blue,
//             ),
//           ),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 right: 12,
//                 top: 8,
//                 bottom: 8,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'Welcome,',
//                     style: TextStyle(
//                       color: Colors.deepPurple,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     '103122430009 - Izzan Maula Rifqi',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 8,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [
//                       Colors.blue,
//                       Color(0xFFDA32F5),
//                     ],
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     const Text(
//                       'Status tes TOEFL Anda:',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     const Text(
//                       'LULUS',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceAround,
//                       children: const [
//                         Column(
//                           children: [
//                             Text(
//                               'Listening',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                               ),
//                             ),
//                             Text(
//                               '80',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'Structure',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                               ),
//                             ),
//                             Text(
//                               '80',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'Reading',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                               ),
//                             ),
//                             Text(
//                               '90',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 18),
//               const Text(
//                 'Riwayat Tes',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               // Daftar riwayat tes
//               Expanded(
//                 child: ListView.separated(
//                   padding: EdgeInsets.zero,
//                   itemCount: riwayatTes.length,
//                   separatorBuilder: (context, index) {
//                     return const Divider(
//                       height: 12,
//                       thickness: 1,
//                       color: Color(0xFFD6D0D6),
//                     );
//                   },
//                   itemBuilder: (context, index) {
//                     final data = riwayatTes[index];
//                     return Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'Tanggal tes:',
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             Text(
//                               data['tanggal']!,
//                               style: const TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 3),
//                         Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'Nilai:',
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             Text(
//                               data['nilai']!,
//                               style: const TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// final List<Map<String, String>> riwayatTes = [
//   {'tanggal': '02/03/2022', 'nilai': '150'},
//   {'tanggal': '01/02/2022', 'nilai': '140'},
//   {'tanggal': '12/01/2022', 'nilai': '170'},
//   {'tanggal': '11/12/2021', 'nilai': '110'},
//   {'tanggal': '10/11/2021', 'nilai': '180'},
//   {'tanggal': '09/10/2021', 'nilai': '130'},
//   {'tanggal': '02/03/2021', 'nilai': '150'},
//   {'tanggal': '01/02/2021', 'nilai': '140'},
//   {'tanggal': '12/01/2021', 'nilai': '170'},
//   {'tanggal': '11/12/2020', 'nilai': '110'},
//   {'tanggal': '10/11/2020', 'nilai': '180'},
//   {'tanggal': '09/10/2020', 'nilai': '130'},
//   {'tanggal': '02/03/2020', 'nilai': '150'},
//   {'tanggal': '01/02/2020', 'nilai': '160'},
//   {'tanggal': '12/01/2020', 'nilai': '165'},
//   {'tanggal': '11/12/2019', 'nilai': '170'},
//   {'tanggal': '10/11/2019', 'nilai': '160'},
//   {'tanggal': '09/10/2019', 'nilai': '160'},
// ];