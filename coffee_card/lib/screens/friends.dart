import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // This would typically come from a database or API
    final List<Map<String, String>> friends = [
      {'name': 'Alice', 'status': 'Coffee lover'},
      {'name': 'Bob', 'status': 'Tea enthusiast'},
      {'name': 'Charlie', 'status': 'Barista'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends'),
        backgroundColor: Colors.brown[700],
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () {
              // TODO: Implement add friend functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Text(friends[index]['name']![0]),
            ),
            title: Text(friends[index]['name']!),
            subtitle: Text(friends[index]['status']!),
            trailing: IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                // TODO: Implement message functionality
              },
            ),
          );
        },
      ),
    );
  }
}