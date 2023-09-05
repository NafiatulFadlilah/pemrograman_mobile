import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Image(
        image: NetworkImage(
            'https://i.pinimg.com/564x/6c/1b/e6/6c1be6efc3bfbf87278650f0b5268bb9.jpg'),
      ),
    );
  }
}
