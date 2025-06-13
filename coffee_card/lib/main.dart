import 'package:coffee_card/screens/about.dart';
import 'package:coffee_card/screens/auth.dart';
import 'package:coffee_card/screens/friends.dart';
import 'package:coffee_card/screens/home.dart';
import 'package:coffee_card/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.brown,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/settings': (context) => const SettingsPage(),
      '/about': (context) => const AboutPage(),
      '/friends': (context) => const FriendsPage(),
      '/auth': (context) => const AuthPage(),
    },
  ));
}