import 'package:chat_app/pages/auth/view/otp_screen.dart';
import 'package:chat_app/pages/auth/view/phone_auth.dart';
import 'package:chat_app/pages/details/view/details_screen.dart';
import 'package:chat_app/pages/home/view/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      redirect: (BuildContext context, GoRouterState state) {
        final bool isLoggedIn = FirebaseAuth.instance.currentUser != null;
        final bool isAuthRoute =
            state.matchedLocation.startsWith('/auth-screen');
        if (!isLoggedIn) {
          return isAuthRoute ? null : '/auth-screen';
        }
        return isAuthRoute ? '/' : null;
      },
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'auth-screen',
          builder: (BuildContext context, GoRouterState state) {
            return PhoneAuth();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'otp-screen',
              builder: (BuildContext context, GoRouterState state) {
                return OtpScreen(
                  verificationId: state.extra as String,
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);
