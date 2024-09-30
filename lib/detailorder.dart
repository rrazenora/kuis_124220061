import 'package:flutter/material.dart';
import 'daftarmenu.dart';

class HalamanDetail extends StatefulWidget {
  final DaftarMenu menu;

  const HalamanDetail({super.key, required this.menu});

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Detail Order'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10),
            ),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/noodle.webp',
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            Text(widget.menu.nama),
            Text(widget.menu.harga),
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan jumlah',
                labelStyle: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(Icons.email, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
