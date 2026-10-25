//navegation até chat aqui!!!

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_list_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home-Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text(
              'chat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.arrow_circle_right, size: 18),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
