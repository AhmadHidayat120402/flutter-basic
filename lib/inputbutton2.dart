import 'package:flutter/material.dart';

class InputButton2 extends StatefulWidget {
  const InputButton2({super.key});

  @override
  State<InputButton2> createState() => _InputButton2State();
}

class _InputButton2State extends State<InputButton2> {
  String _nama = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Demo"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: "isi namamu", labelText: "namamu siapa ?"),
              onChanged: (String value) {
                setState(() {
                  _nama = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("namamu, $_nama"),
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
