import 'package:flutter/material.dart';

class M6Textfield extends StatefulWidget {
  const new({super.key});

  @override
  State<M6Textfield> createState() => _M6Textfield();
}

class _M6Textfield extends State<M6Textfield> {
  String nama = "";

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Text(nama),
          TextField(
            controller: controller,
            // onChanged: (value) => setState(() {
            //   nama = value;
            // }),
          ),
          IconButton(
            onPressed: () => setState(() {
              nama = controller.text;
            }),
            icon: const Icon(Icons.arrow_upward),
            tooltip: 'Ganti Nama',
          ),
        ],
      ),
    );
  }
}
