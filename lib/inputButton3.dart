import 'package:flutter/material.dart';

class InputButton3 extends StatefulWidget {
  const InputButton3({super.key});

  @override
  State<InputButton3> createState() => _InputButton3State();
}

class _InputButton3State extends State<InputButton3> {
  String _namaDepan = '';
  String _namaBelakang = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo TextField")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: "isikan nama depan",
                  labelText: "nama depan siapa ?"),
              onChanged: (String value) {
                setState(() {
                  _namaDepan = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: "isikan nama belakangmu",
                  labelText: "nama belakang siapa ?"),
              onChanged: (String value) {
                setState(() {
                  _namaBelakang = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                              "nama depan mu $_namaDepan nama belakangmu $_namaBelakang"),
                        );
                      });
                },
                child: const Text("submit"))
          ],
        ),
      ),
    );
  }
}
