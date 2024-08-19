part of 'sign_up_cubit.dart';

@immutable
class SignUpState {
  final bool isLoading;
  final String? error;

  const SignUpState({this.isLoading = false, this.error});
  SignUpState copyWith({
    bool? isLoading,
    String? error,
  }) {
    return SignUpState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
