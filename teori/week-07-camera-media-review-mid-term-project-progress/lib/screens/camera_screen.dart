// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// import '../services/camera_services.dart';

// class CameraScreen extends StatefulWidget {
//   const CameraScreen({super.key});

//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   final CameraService _cameraService = CameraService();
//   late Future<void> _initFuture;
//   bool _isCapturing = false;

//   @override
//   void initState() {
//     super.initState();
//     _initFuture = _cameraService.initialize();
//   }

//   @override
//   void dispose() {
//     _cameraService.dispose();
//     super.dispose();
//   }

//   Future<void> _takePicture() async {
//     if (_isCapturing) return;
//     setState(() => _isCapturing = true);

//     try {
//       final file = await _cameraService.capture();
//       if (!mounted) return;
//       // Kirim path gambar kembali ke halaman sebelumnya
//       Navigator.pop(context, file.path);
//     } catch (e) {
//       if (!mounted) return;
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Gagal mengambil gambar: $e')));
//       setState(() => _isCapturing = false);
//     }
//   }

//   String _errorMessage(Object error) {
//     if (error is CameraException &&
//         (error.code == 'CameraAccessDenied' ||
//             error.code == 'CameraAccessDeniedWithoutPrompt' ||
//             error.code == 'CameraAccessRestricted')) {
//       return 'Izin kamera ditolak. Aktifkan izin kamera di pengaturan.';
//     }
//     return 'Terjadi kesalahan: $error';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Kamera')),
//       body: FutureBuilder<void>(
//         future: _initFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState != ConnectionState.done) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(24),
//                 child: Text(
//                   _errorMessage(snapshot.error!),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             );
//           }
//           return CameraPreview(_cameraService.controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _takePicture,
//         child: _isCapturing
//             ? const CircularProgressIndicator(color: Colors.white)
//             : const Icon(Icons.camera_alt),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
