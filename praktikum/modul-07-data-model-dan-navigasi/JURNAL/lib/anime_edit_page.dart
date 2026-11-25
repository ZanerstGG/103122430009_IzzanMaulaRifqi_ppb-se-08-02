// import 'package:flutter/material.dart';

// import 'main.dart';

// class AnimeEditPage extends StatefulWidget {
//   final Anime anime;

//   const AnimeEditPage({super.key, required this.anime});

//   @override
//   State<AnimeEditPage> createState() => _AnimeEditPageState();
// }

// class _AnimeEditPageState extends State<AnimeEditPage> {
//   late final TextEditingController _titleController;
//   late final TextEditingController _descriptionController;
//   late String _selectedCategory;

//   @override
//   void initState() {
//     super.initState();
//     _titleController = TextEditingController(text: widget.anime.title);
//     _descriptionController = TextEditingController(
//       text: widget.anime.description,
//     );
//     _selectedCategory = widget.anime.category;
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     super.dispose();
//   }

//   void _updateAnime() {
//     Navigator.pop(
//       context,
//       Anime(
//         title: _titleController.text.trim(),
//         category: _selectedCategory,
//         description: _descriptionController.text.trim(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Edit Anime'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _titleController,
//               decoration: const InputDecoration(labelText: 'Judul'),
//             ),
//             TextField(
//               controller: _descriptionController,
//               decoration: const InputDecoration(labelText: 'Deskripsi'),
//             ),
//             DropdownButtonFormField<String>(
//               initialValue: _selectedCategory,
//               items: animeCategories
//                   .map(
//                     (category) => DropdownMenuItem(
//                       value: category,
//                       child: Text(category),
//                     ),
//                   )
//                   .toList(),
//               onChanged: (value) {
//                 if (value != null) {
//                   setState(() {
//                     _selectedCategory = value;
//                   });
//                 }
//               },
//             ),
//             const SizedBox(height: 24),
//             ElevatedButton(
//               onPressed: _updateAnime,
//               child: const Text('Perbarui'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
