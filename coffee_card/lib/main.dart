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
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10,40,0,0),
      child: const Text('Hello from flutter', style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        letterSpacing: 4,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic
      ),),
    );
  }
}