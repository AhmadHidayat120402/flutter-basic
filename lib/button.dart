import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    String? language;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "demo button",
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("elevated button")),
              ),
              Container(
                // decoration: BoxDecoration(
                //     border: Border.all(width: 3, color: Colors.black)),
                child: TextButton(onPressed: () {}, child: Text("Text Button")),
              ),
              Container(
                child: OutlinedButton(
                    onPressed: () {}, child: Text("Outline Button")),
              ),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.volume_up),
                  tooltip: "increae volume by 10",
                ),
              ),
              Container(
                child: DropdownButton(items: <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'Dart',
                    child: Text("dart"),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Kotlin',
                    child: Text("kotlin"),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Java',
                    child: Text("java"),
                  ),
                ], value: language, onChanged: (String? value) {}),
              )
            ],
          )),
    );
  }
}
