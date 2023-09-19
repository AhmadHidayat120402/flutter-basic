import 'package:flutter/material.dart';

class Checkbuttons extends StatefulWidget {
  const Checkbuttons({super.key});

  @override
  State<Checkbuttons> createState() => _CheckbuttonsState();
}

class _CheckbuttonsState extends State<Checkbuttons> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo check box"),
      ),
      body: ListTile(
        leading: Checkbox(
            value: agree,
            onChanged: (bool? value) {
              setState(() {
                agree = value!;
                showSnackBar();
              });
            }),
        title: const Text('Agree/Disagree'),
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(agree ? 'cek' : 'uncek'),
      duration: const Duration(seconds: 1),
    ));
  }
}
