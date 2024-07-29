import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Push-ups counter')),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 100.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Are you ready to work out??",
                style: const TextStyle(fontSize: 50),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20), // Spazio tra il testo e il bottone
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  // Assicurati che il `context` sia quello di `HomeScreen`
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Counter()),
                  );
                },
                child: const Text("Start",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _upCounter = 0;

  void _incrementUp() {
    setState(() {
      _upCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Push-ups: $_upCounter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _incrementUp,
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
