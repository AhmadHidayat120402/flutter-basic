import 'package:flutter/material.dart';

class InputController extends StatefulWidget {
  const InputController({super.key});

  @override
  State<InputController> createState() => _InputControllerState();
}

class _InputControllerState extends State<InputController> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Input dengan controller"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: "isikan nama", labelText: "nama isi"),
            ),
            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                  hintText: "isikan alamat", labelText: "alamat isi"),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                              "nama ${_controller.text} alamatmu ${_controller2.text}"),
                        );
                      });
                },
                child: Text("save")),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
