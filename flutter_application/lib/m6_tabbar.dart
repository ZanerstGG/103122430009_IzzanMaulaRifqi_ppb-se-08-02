import 'package:flutter/material.dart';

class M6Tabbar extends StatefulWidget {
  const new({super.key});

  @override
  State<M6Tabbar> createState() => _M6TabbarState();
}

class _M6TabbarState extends State<M6Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("IVAN HENGKER, VALO IMO DULU BOS"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.car_repair),
            Icon(Icons.home),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}
