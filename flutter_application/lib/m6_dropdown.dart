import 'package:flutter/material.dart';

class M6Dropdown extends StatefulWidget {
  const new({super.key});

  @override
  State<M6Dropdown> createState() => _M6DropdownState();
}

class _M6DropdownState extends State<M6Dropdown> {
  String nama = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(nama),
          DropdownButton(
            items: [
              DropdownMenuItem(value: "Dayum bro", child: Text("Dayum bro")),
              DropdownMenuItem(value: "Mantap jiwa", child: Text("Mantap jiwa")),
            ],
            onChanged: (value) => setState(() {}),
          ),
        ],
      ),
    );
  }
}
