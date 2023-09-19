import 'package:flutter/material.dart';

class Dropdown2 extends StatefulWidget {
  const Dropdown2({super.key});

  @override
  State<Dropdown2> createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  String? bahasa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown')),
      body: Center(
        child: DropdownButton(
            items: [
              DropdownMenuItem(
                  value: "Indonesia",
                  child: Text(
                    'indonesia',
                  )),
              DropdownMenuItem(
                  value: "Madura",
                  child: Text(
                    'madura',
                  )),
              DropdownMenuItem(
                  value: "Jawa",
                  child: Text(
                    'jawa',
                  )),
            ],
            value: bahasa,
            hint: Text('pilih bahasamu'),
            onChanged: (String? value) {
              setState(() {
                bahasa = value;
              });
            }),
      ),
    );
  }
}
