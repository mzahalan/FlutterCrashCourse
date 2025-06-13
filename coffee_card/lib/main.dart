import 'package:coffee_card/screens/about.dart';
import 'package:coffee_card/screens/auth.dart';
import 'package:coffee_card/screens/course.dart';
import 'package:coffee_card/screens/friends.dart';
import 'package:coffee_card/screens/home.dart';
import 'package:coffee_card/screens/settings.dart';
import 'package:flutter/material.dart';

MaterialApp getApp(Widget root) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => root,
        '/settings': (context) => const SettingsPage(),
        '/about': (context) => const AboutPage(),
        '/friends': (context) => const FriendsPage(),
        '/auth': (context) => const AuthPage(),
      },
    );
}

enum Mode {
  sandbox,
  course,
  vibe,
}

void main() {
  const Mode mode = Mode.course;
  
  switch(mode) {
    case Mode.sandbox:
      runApp(const MaterialApp(home: Sandbox()));
      break;
    case Mode.course:
      runApp(getApp(const Course()));
      break;
    default:
      runApp(getApp(const Home()));
  }
}


class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width:100,
            color: Colors.red,
            child: const Text('one')),
            Container(
            width:100,
            color: Colors.green,
            child: const Text('two')),
            Container(
            width:200,
            color: Colors.blue,
            child: const Text('three')),
        ]
      ),
    );
  }
}
