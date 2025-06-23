import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("404 - Page Not Found")),
      body: const Center(
        child: Text("Oops! This page doesn't exist."),
      ),
    );
  }
}
