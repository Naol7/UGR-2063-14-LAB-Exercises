import 'package:flutter/material.dart';
import 'package:lab_2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.help),
                onPressed: () {},
              ),
              const Text(
                'i',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              const Text(
                'J',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              const Text(
                'Tracker',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: const Home(),
      ),
    );
  }
}
