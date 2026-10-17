import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, ukuran) {
        return Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF8CC5F2),
                    Color(0xFFD8EDFF),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 15,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Beranda',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              top: ukuran.maxHeight * 0.42,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(22),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 45,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'PPB MODUL 5',
                          style: TextStyle(
                            color: Color(0xFF6897D8),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 125,
                      left: 12,
                      child: Text(
                        'Random Text 1',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Positioned(
                      top: 125,
                      right: 12,
                      child: Text(
                        'Random Text 2',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Positioned(
                      bottom: 65,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'Text 3',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}