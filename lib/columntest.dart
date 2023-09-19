import 'package:flutter/material.dart';

class ColumTest extends StatelessWidget {
  const ColumTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("contoh column"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sebuah judul",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text("ini contoh kalimat deskripksi dari kalimat jdudl")
            ],
          ),
        ),
      ),
    );
  }
}
