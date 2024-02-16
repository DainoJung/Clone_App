import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/common/routes/routes.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({super.key});

  navaigateToContactPage(context) {
    Navigator.pushNamed(context, Routes.contact);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Chat Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navaigateToContactPage(context),
        child: const Icon(Icons.chat),
      ),
    );
  }
}
