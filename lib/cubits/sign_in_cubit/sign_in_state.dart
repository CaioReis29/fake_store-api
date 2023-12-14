part of 'sign_in_cubit.dart';

abstract class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInProccess extends SignInState {}

final class SignInFailure extends SignInState {}

final class SignInSucess extends SignInState {}

final class ChangeLoginPasswordSuffixIcon extends SignInState {}
