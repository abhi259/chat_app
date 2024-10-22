import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  ///  Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/details'),
              child: const Text('Go to the Details screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/auth-screen'),
              child: const Text('Go to the Auth screen'),
            ),
          ),
        ],
      ),
    );
  }
}
