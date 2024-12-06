import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Presentation Layer".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Joni".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text("joni@gmail.com"),
            const SizedBox(height: 20),
            Text(
              "============ Masakan ============".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text("Mie ayam enak banget"),
            const SizedBox(height: 5),
            const Text("30 Menit"),
            const SizedBox(height: 5),
            const Text("Tingkat kesulitan ( Rumit )"),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 150,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
