import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for authentication state
final authStateProvider = StateProvider<AuthState>((ref) {
  return AuthState.initial;
});

// Provider for email verification state
final emailVerificationProvider = StateProvider<bool>((ref) {
  return false;
});

// Authentication states
enum AuthState {
  initial,
  authenticated,
  unauthenticated,
  verifying,
  registering,
  loading,
  error,
}
