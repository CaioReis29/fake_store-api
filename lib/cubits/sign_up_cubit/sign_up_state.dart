part of 'sign_up_cubit.dart';

abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpFailure extends SignUpState {}

final class SignUpProccess extends SignUpState {}

final class SignUpSucess extends SignUpState {}

final class ChangeLoginPasswordSuffixIcon extends SignUpState {}
