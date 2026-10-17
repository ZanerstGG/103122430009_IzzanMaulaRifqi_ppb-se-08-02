import 'package:flutter/material.dart';
import 'beranda.dart';
import 'pesan.dart';
import 'biodata.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}
class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}
class _HalamanUtamaState extends State<HalamanUtama> {
  int halamanSekarang = 0;
  final PageController controller = PageController();
  void pindahHalaman(int index) {
    setState(() {
      halamanSekarang = index;
    });
    controller.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              halamanSekarang = index;
            });
          },
          children: const [
            BerandaPage(),
            PesanPage(),
            BiodataPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: halamanSekarang,
        onTap: pindahHalaman,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFF7F8FC),
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}