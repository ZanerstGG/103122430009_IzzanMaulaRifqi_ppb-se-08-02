import 'package:flutter/material.dart';

import 'app_type_data.dart';
import 'app_type_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('ListView dengan Dialog'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: appTypeList.length,
        itemBuilder: (context, index) {
          return AppTypeTile(item: appTypeList[index]);
        },
      ),
    );
  }
}