// import 'package:firebase_auth/firebase_auth.dart';

// class AuthController {
//   void handleVerifyPhoneNumber({
//     required String phoneNumber,
//     required Function() onSuccess,
//     required Function() onFailure,
//   }) async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       verificationCompleted: (PhoneAuthCredential credential) {},
//       verificationFailed: (FirebaseAuthException e) {
//         onFailure();
//         print("OTP verification failed: ${e.message.toString()}");
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         onSuccess( );
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {},
//       phoneNumber: phoneNumber,
//     );
//   }
// }

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@CopyWith()
class AuthControllerState {
  final bool isLoading;

  AuthControllerState({required this.isLoading});
}

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthControllerState build() {
    return AuthControllerState(
      isLoading: false,
    );
  }

  void handleSubmitPhoneNumber({
    required String phoneNumber,
    required Function(String verificationId) onSuccess,
    required Function() onFailure,
  }) async {
    state = state.copyWith(isLoading: true);

    print("loading: ${state.isLoading}");

    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          onFailure();
          debugPrint("OTP verification failed: ${e.message.toString()}");
        },
        codeSent: (String verificationId, int? resendToken) {
          debugPrint("OTP verification sent: $verificationId");
          onSuccess(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
        phoneNumber: phoneNumber,
      );
    } catch (e) {
      onFailure();
      debugPrint("OTP verification failed: ${e.toString()}");
    } finally {
      state = state.copyWith(isLoading: false);
    }
    print("loading: ${state.isLoading}");
  }

  void handleVerifyOtp({
    required String verificationId,
    required String otp,
    required Function() onSuccess,
    required Function() onFailure,
  }) async {
    state = state.copyWith(isLoading: true);

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      onSuccess();
    } catch (e) {
      onFailure();
      debugPrint("OTP verification failed: ${e.toString()}");
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
