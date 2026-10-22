import 'package:flutter/material.dart';

class M6ButtonNavigation extends StatefulWidget {
  const new({super.key});

  @override
  State<M6ButtonNavigation> createState() => _M6ButtonNavigationState();
}

class _M6ButtonNavigationState extends State<M6ButtonNavigation> {
  List page = [
    Center(child: Text("Ini Halaman Untuk Ivan Ngehack")),
    Center(child: Text("INI HALAMAN UNTUK IMO VALO")),
    Center(child: Text("Ini Halaman Untuk REXZY Anjay Mabar")),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "units"),
        ],
        onTap: (idx) => setState(() => index = idx),
      ),
    );
  }
}
