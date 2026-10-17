import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

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
                'Form Biodata',
                style: TextStyle(
                  color: Color(0xFF547FB9),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                buatTextField(
                  'Nama Lengkap',
                  Icons.person,
                ),
                buatTextField(
                  'NIM',
                  Icons.badge,
                ),
                buatTextField(
                  'Jurusan',
                  Icons.school,
                ),
                buatTextField(
                  'Umur',
                  Icons.cake,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buatTextField(String judul, IconData ikon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: judul,
          hintStyle: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            ikon,
            size: 18,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0E8),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0E8),
            ),
          ),
        ),
      ),
    );
  }
}