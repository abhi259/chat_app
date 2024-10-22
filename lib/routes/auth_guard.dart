import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';

FutureOr<String?> authGuard(BuildContext context, GoRouterState state) {
  final isLoggedIn = FirebaseAuth.instance.currentUser != null;
  final bool isAuthRoute = state.matchedLocation.startsWith('/auth-screen');
  if (!isLoggedIn) {
    return isAuthRoute ? null : '/auth-screen';
  }
  return isAuthRoute ? '/' : null;
}
