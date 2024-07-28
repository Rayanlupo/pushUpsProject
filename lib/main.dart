import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Push-ups counter')),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 300.0, left: 20, right: 20),
                child: (Text("Are you ready to work out??",
                    style: TextStyle(fontSize: 50),
                    textAlign: TextAlign.start))),
            TextButton(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20))
                    onPressed: ,)),
      ),
    );
  }
}
