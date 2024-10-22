import 'package:chat_app/pages/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OtpScreen extends ConsumerStatefulWidget {
  final String verificationId;
  const OtpScreen({super.key, required this.verificationId});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authController = ref.read(authControllerProvider.notifier);
    final authControllerState = ref.watch(authControllerProvider);
    final isLoading = authControllerState.isLoading;

    void handleOtpVerification() {
      authController.handleVerifyOtp(
        verificationId: widget.verificationId,
        otp: _otpController.text.toString(),
        onSuccess: () {
          context.go('/');
        },
        onFailure: () {
          //TODO: show error toast message
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Otp Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              showCursor: false,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                labelText: 'Otp',
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            // Text("User Auth Status: $userAuthStatus"),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: handleOtpVerification,
                    child: const Text('Verify'),
                  )
          ],
        ),
      ),
    );
  }
}
