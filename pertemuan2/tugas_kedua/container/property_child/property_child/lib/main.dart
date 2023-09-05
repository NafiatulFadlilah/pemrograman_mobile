import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Button")),
          body: Container(
              child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              onPrimary: Colors.white,
            ),
            child: Text("Button", style: TextStyle(fontSize: 20)),
          ))),
    );
  }
}
