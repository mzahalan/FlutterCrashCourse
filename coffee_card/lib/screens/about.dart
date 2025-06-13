import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.brown[700],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CircleAvatar(
              radius: 50,
              backgroundColor: Colors.brown,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
             SizedBox(height: 20),
             Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10),
             Text(
              'Coffee Enthusiast',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
             SizedBox(height: 20),
             Text(
              'Bio:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10),
             Text(
              'I am a passionate coffee lover who enjoys trying different coffee varieties from around the world. '
              'My favorite coffee is Ethiopian Yirgacheffe.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}