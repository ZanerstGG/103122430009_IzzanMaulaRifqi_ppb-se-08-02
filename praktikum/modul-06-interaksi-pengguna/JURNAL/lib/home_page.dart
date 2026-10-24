// import 'package:flutter/material.dart';
// import 'tech_item.dart';
// import 'add_tech_dialog.dart';
// import 'tech_list_tile.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<TechItem> _items = [];

//   void _onFabPressed() {
//     final messenger = ScaffoldMessenger.of(context);
//     messenger.hideCurrentSnackBar();
//     messenger.showSnackBar(
//       SnackBar(
//         content: const Text('FAB Clicked'),
//         action: SnackBarAction(
//           label: 'Add',
//           onPressed: _showAddDialog,
//         ),
//       ),
//     );
//   }

//   Future<void> _showAddDialog() async {
//     final result = await showDialog<TechItem>(
//       context: context,
//       builder: (_) => const AddTechDialog(),
//     );
//     if (!mounted || result == null) return;
//     setState(() => _items.add(result));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('List View Aja YGY'),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.symmetric(vertical: 8),
//         itemCount: _items.length,
//         itemBuilder: (context, index) => TechListTile(item: _items[index]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _onFabPressed,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }