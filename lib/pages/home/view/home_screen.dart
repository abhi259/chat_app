import 'package:chat_app/pages/auth/controller/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  ///  Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  void handleSignOut() {
    final authController = ref.read(authControllerProvider.notifier);
    authController.handleLogout();
  }

  @override
  Widget build(BuildContext context) {
    final authController = ref.read(authControllerProvider.notifier);
    final bool isUserLoggedIn = authController.isUserLoggedIn();

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                child: const Text("Sign Out"),
                onPressed: handleSignOut,
              ),
            ),
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
            Center(
              child: Text(isUserLoggedIn ? "Logged In" : "Logged Out"),
            )
          ],
        ),
      ),
    );
  }
}
