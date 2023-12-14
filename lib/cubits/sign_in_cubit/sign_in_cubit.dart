import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/repositories/auth/sign_in/sign_in_repository.dart';
import 'package:flutter/material.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.repo) : super(SignInInitial());
  SignInRepository repo;

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  bool isLoginPasswordShowing = true;

  IconData suffixIcon = Icons.visibility;

  void changeLoginPasswordSuffixIcon() {
    isLoginPasswordShowing = !isLoginPasswordShowing;
    suffixIcon =
        isLoginPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPasswordSuffixIcon());
  }

  Future<void> signIn() async {
    emit(SignInProccess());
    try {
      final result =
          await repo.login(username: userName.text, pass: password.text);
      if (result) {
        emit(SignInSucess());
      } else {
        emit(SignInFailure());
      }
    } catch (e) {
      log(e.toString());
      emit(SignInFailure());
    }
  }
}
