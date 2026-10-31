// import 'dart:io';

// import 'package:flutter/material.dart';

// import 'camera_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String? _imagePath;

//   Future<void> _openCamera() async {
//     final result = await Navigator.push<String>(
//       context,
//       MaterialPageRoute(builder: (_) => const CameraScreen()),
//     );

//     if (result != null) {
//       setState(() => _imagePath = result);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Camera API')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_imagePath != null) ...[
//               Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.file(File(_imagePath!)),
//                 ),
//               ),
//             ] else
//               const Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Text('Belum ada gambar yang diambil'),
//               ),
//             const SizedBox(height: 16),
//             ElevatedButton.icon(
//               onPressed: _openCamera,
//               icon: const Icon(Icons.camera_alt),
//               label: const Text('Buka Kamera'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
