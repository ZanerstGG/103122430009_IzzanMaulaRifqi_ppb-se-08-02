import 'package:flutter/material.dart';

class PesanPage extends StatelessWidget {
  const PesanPage({super.key});

  final List<Map<String, dynamic>> daftarPesan = const [
    {
      'judul': 'Via',
      'pesan': 'Hari ini kita ada praktikum PPB.',
      'waktu': '09.30 AM',
      'warna': Colors.pink,
    },
    {
      'judul': 'Tia',
      'pesan': 'Jangan lupa mengerjakan tugas ya.',
      'waktu': '10.15 AM',
      'warna': Colors.blue,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEDF7FF),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Pesan',
                style: TextStyle(
                  color: Color(0xFF547FB9),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              itemCount: daftarPesan.length,
              itemBuilder: (context, index) {
                final pesan = daftarPesan[index];
                return Card(
                  color: const Color(0xFFFFF9FC),
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    leading: CircleAvatar(
                      backgroundColor: pesan['warna'] as Color,
                      child: const Icon(
                        Icons.markunread,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    title: Text(
                      pesan['judul'] as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    subtitle: Text(
                      pesan['pesan'] as String,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 11),
                    ),
                    trailing: Text(
                      pesan['waktu'] as String,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}