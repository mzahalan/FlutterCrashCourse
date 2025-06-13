import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id'),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hello World!!!');
  }
}