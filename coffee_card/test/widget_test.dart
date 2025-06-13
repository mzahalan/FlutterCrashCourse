import 'package:coffee_card/screens/about.dart';
import 'package:coffee_card/screens/auth.dart';
import 'package:coffee_card/screens/friends.dart';
import 'package:coffee_card/screens/home.dart';
import 'package:coffee_card/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home page has welcome message and navigation elements', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Home()));

    expect(find.text('Welcome to Coffee Card!'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.byType(Drawer), findsNothing); // Drawer is hidden by default
  });

  testWidgets('Settings page shows settings options', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SettingsPage()));

    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Dark Mode'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Language'), findsOneWidget);
  });

  testWidgets('About page shows profile information', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Coffee Enthusiast'), findsOneWidget);
  });

  testWidgets('Friends page shows friend list', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: FriendsPage()));

    expect(find.text('Friends'), findsOneWidget);
    expect(find.text('Alice'), findsOneWidget);
    expect(find.text('Bob'), findsOneWidget);
    expect(find.text('Charlie'), findsOneWidget);
  });

  testWidgets('Auth page shows login form', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AuthPage()));

    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Don\'t have an account? Sign up'), findsOneWidget);
  });

  testWidgets('Auth page can switch between login and signup', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AuthPage()));

    expect(find.text('Login'), findsOneWidget);
    
    // Tap the switch to signup button
    await tester.tap(find.text('Don\'t have an account? Sign up'));
    await tester.pump();

    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Already have an account? Login'), findsOneWidget);
  });
}
