import 'package:flutter/material.dart';

class SwitchButton2 extends StatefulWidget {
  const SwitchButton2({super.key});

  @override
  State<SwitchButton2> createState() => _SwitchButton2State();
}

class _SwitchButton2State extends State<SwitchButton2> {
  bool lightOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo siwtch button 2"),
      ),
      body: Center(
        child: Switch(
            value: lightOn,
            onChanged: (bool value) {
              setState(() {
                lightOn = value;
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(lightOn ? 'nyala' : 'mati'),
                duration: const Duration(seconds: 1),
              ));
            }),
      ),
    );
  }
}
