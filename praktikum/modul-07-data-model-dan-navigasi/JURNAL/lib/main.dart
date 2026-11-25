// import 'package:flutter/material.dart';

// import 'anime_detail_page.dart';
// import 'anime_edit_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class Anime {
//   String title;
//   String category;
//   String description;

//   Anime({
//     required this.title,
//     required this.category,
//     required this.description,
//   });
// }

// const List<String> animeCategories = [
//   'Action',
//   'Adventure',
//   'Comedy',
//   'Drama',
//   'Fantasy',
//   'Horror',
//   'Isekai',
//   'Mecha',
//   'Mystery',
//   'Psychological',
//   'Romance',
//   'Sci-Fi',
//   'Slice of Life',
//   'Sports',
//   'Supernatural',
//   'Thriller',
// ];

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daftar Anime',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(useMaterial3: true),
//       home: const AnimeListPage(),
//     );
//   }
// }

// class AnimeListPage extends StatefulWidget {
//   const AnimeListPage({super.key});

//   @override
//   State<AnimeListPage> createState() => _AnimeListPageState();
// }

// class _AnimeListPageState extends State<AnimeListPage> {
//   final List<Anime> _animeList = [
//     Anime(
//       title: 'Shiboyugi: Playing Death Games to Put Food on the Table',
//       category: 'Thriller',
//       description:
//           'Yuki terbangun di sebuah rumah besar yang asing. Ia memakai seragam '
//           'pelayan dan berbaring di atas ranjang mewah. Tak lama kemudian, ia '
//           'menemukan lima gadis lain yang berpakaian sama persis dengannya. '
//           'Tempat ini bernama Ghost House, dan satu-satunya cara untuk bertahan '
//           'hidup adalah melewati jebakan-jebakan di dalamnya. Ada permainan maut '
//           'yang penuh sumpitan, gergaji putar, ruangan terkunci, dan berbagai '
//           'senjata. Bagi semua orang di sana, ini situasi yang menakutkan dan '
//           'tanpa harapan... kecuali bagi Yuki. Bagaimanapun juga, inilah '
//           'pekerjaannya di usia tujuh belas tahun. Aneh, bukan? Yuki pun setuju. '
//           'Tapi memang begitulah sebagian orang mencari nafkah, yaitu dengan '
//           'bermain permainan maut.',
//     ),
//     Anime(
//       title: 'Cyberpunk Edgerunners 2',
//       category: 'Sci-Fi',
//       description:
//           'Cyberpunk: Edgerunners 2 membawamu kembali ke Night City, tempat '
//           'kehidupan banyak orang saling terjerat hingga titik paling ekstrem. '
//           'Weak, seorang legenda cyberpunk yang kini sudah redup, terpaksa hidup '
//           'tanpa implan chrome sambil mencari kembali arti hidupnya di dunia yang '
//           'telah meninggalkannya. Sementara itu, D, seorang nomad yang mematikan, '
//           'memulai jalan balas dendam yang membawanya mendekati rahasia korporasi '
//           'yang seharusnya tak pernah terungkap. Dalam serial mandiri sepuluh '
//           'episode ini, temukan kisah tentang keluarga, obsesi, warisan, dan '
//           'bagaimana sudut pandangmu mencerminkan kisah orang-orang di sekitarmu.',
//     ),
//   ];

//   void _showAddDialog() {
//     final titleController = TextEditingController();
//     final descriptionController = TextEditingController();
//     String selectedCategory = animeCategories.first;

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Tambah Anime Baru'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: titleController,
//                 decoration: const InputDecoration(labelText: 'Judul'),
//               ),
//               TextField(
//                 controller: descriptionController,
//                 decoration: const InputDecoration(labelText: 'Deskripsi'),
//               ),
//               DropdownButtonFormField<String>(
//                 initialValue: selectedCategory,
//                 items: animeCategories
//                     .map(
//                       (category) => DropdownMenuItem(
//                         value: category,
//                         child: Text(category),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: (value) {
//                   if (value != null) {
//                     selectedCategory = value;
//                   }
//                 },
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('Cancel'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (titleController.text.trim().isEmpty) {
//                   return;
//                 }
//                 setState(() {
//                   _animeList.add(
//                     Anime(
//                       title: titleController.text.trim(),
//                       category: selectedCategory,
//                       description: descriptionController.text.trim(),
//                     ),
//                   );
//                 });
//                 Navigator.pop(context);
//               },
//               child: const Text('Save'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Daftar Anime'),
//       ),
//       body: ListView.builder(
//         itemCount: _animeList.length,
//         itemBuilder: (context, index) {
//           final anime = _animeList[index];
//           return GestureDetector(
//             onDoubleTap: () {
//               setState(() {
//                 _animeList.removeAt(index);
//               });
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text("Data '${anime.title}' sudah dihapus")),
//               );
//             },
//             child: Card(
//               margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//               child: ListTile(
//                 leading: const Icon(Icons.movie, color: Colors.blue),
//                 title: Text(anime.title),
//                 subtitle: Text(anime.category),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => AnimeDetailPage(anime: anime),
//                     ),
//                   );
//                 },
//                 onLongPress: () async {
//                   final updatedAnime = await Navigator.push<Anime>(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => AnimeEditPage(anime: anime),
//                     ),
//                   );
//                   if (updatedAnime != null) {
//                     setState(() {
//                       _animeList[index] = updatedAnime;
//                     });
//                   }
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _showAddDialog,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
