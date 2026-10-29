import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Praktikum Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wahyu Aji Laksono_188'),
        ),
        body: const Center(
          // Point B: Menggabungkan Column dan Row untuk membuat Grid 2x2
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Baris Pertama (Row 1)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakSuka(
                    warna: Colors.lightBlueAccent, // Point A: Warna biru 1
                    teks: 'Saya Suka ini',
                  ),
                  SizedBox(width: 20),
                  KotakSuka(
                    warna: Colors.blue, // Point A: Warna biru 2
                    teks: 'Saya Cinta ini',
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Baris Kedua (Row 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakSuka(
                    warna: Colors.blueAccent, // Point A: Warna biru 3
                    teks: 'Saya Gemar ini',
                  ),
                  SizedBox(width: 20),
                  KotakSuka(
                    warna: Colors.indigo, // Point A: Warna biru 4
                    teks: 'Favorit ini',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakSuka extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakSuka({
    super.key,
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      // Point D: Menggunakan Column untuk menyusun Icon dan Text secara vertikal
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Point C: Icon diset ke Icons.favorite dan warna merah
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          const SizedBox(height: 6),
          // Point D: Text di bawah icon
          Text(
            teks,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}