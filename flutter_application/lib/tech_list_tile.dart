import 'package:flutter/material.dart';
import 'tech_item.dart';
import 'date_format.dart';

class TechListTile extends StatelessWidget {
  final TechItem item;

  const TechListTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: item.color),
        title: Text(item.name),
        subtitle: Text(
          '${item.platform} - ${item.lang}\n'
          'Date: ${formatDate(item.date)}',
        ),
        isThreeLine: true,
      ),
    );
  }
}
