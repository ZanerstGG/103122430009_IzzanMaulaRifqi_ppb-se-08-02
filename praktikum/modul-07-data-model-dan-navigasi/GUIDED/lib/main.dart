// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: true,
//       home: FirstPage(),
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String nama = "Izzan Maula Rifqi";

//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Ini Page Pertama'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondPage(nama: nama),
//                   ),
//                 );
//               },
//               child: const Text('Go to second page'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   final String nama;
//   const SecondPage({super.key, required this.nama});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Ini Page Kedua'),
//             Text('Nama saya $nama'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('back to first page'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
