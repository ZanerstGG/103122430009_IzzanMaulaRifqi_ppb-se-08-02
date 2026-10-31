import 'package:camera/camera.dart';

class CameraService {
  CameraController? _controller;

  CameraController get controller => _controller!;

  Future<void> initialize() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      throw CameraException('noCamera', 'Tidak ada kamera yang tersedia');
    }

    final selected = cameras.firstWhere(
      (c) => c.lensDirection == CameraLensDirection.back,
      orElse: () => cameras.first,
    );

    _controller = CameraController(
      selected,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _controller!.initialize();
  }

  Future<XFile> capture() async {
    if (_controller == null || !_controller!.value.isInitialized) {
      throw CameraException('notReady', 'Kamera belum siap');
    }
    return _controller!.takePicture();
  }

  void dispose() {
    _controller?.dispose();
  }
}
