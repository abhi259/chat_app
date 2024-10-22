import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> initializeDefault() async {
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print('Initialized default app $app');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault();
  // runApp(const MyApp());
  runApp(const ProviderScope(child: MyApp()));
}

final GoRouter _router = mainRouter;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
