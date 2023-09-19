import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: DropdownButton(
          items: const [
            DropdownMenuItem(
              value: 'Dart',
              child: Text("dart"),
            ),
            DropdownMenuItem(
              value: 'Kotlin',
              child: Text("kotlin"),
            ),
            DropdownMenuItem(
              value: 'Java',
              child: Text("java"),
            ),
            DropdownMenuItem(
              value: 'PHP',
              child: Text("php"),
            ),
          ],
          value: language,
          hint: const Text("Select Language"),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          }),
    );
  }
}
