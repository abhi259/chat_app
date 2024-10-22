import 'package:chat_app/pages/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneAuth extends ConsumerWidget {
  /// Constructs a [PhoneAuth]
  PhoneAuth({super.key});

  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authControllerProvider.notifier);
    final authControllerState = ref.watch(authControllerProvider);
    final isLoading = authControllerState.isLoading;

    void handleSubmitPhoneNumber({
      required String phoneNumber,
    }) {
      final phoneNumber = phoneNumberController.text;
      authController.handleSubmitPhoneNumber(
        phoneNumber: phoneNumber,
        onSuccess: (String verificationId) {
          context.go('/auth-screen/otp-screen', extra: verificationId);
        },
        onFailure: () {
          context.go('/auth-screen');
          //TODO: show error toast message
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Auth Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () => handleSubmitPhoneNumber(
                  phoneNumber: phoneNumberController.text,
                ),
                child: const Text('Verify Phone Number'),
              ),
            ),
            const SizedBox(height: 16.0),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () => context.go('/'),
                    child: const Text('Go back to the Home screen'),
                  ),
          ],
        ),
      ),
    );
  }
}
