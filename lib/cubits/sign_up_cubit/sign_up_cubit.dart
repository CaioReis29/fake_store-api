import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/repositories/auth/sign_up/sign_up_repository.dart';
import 'package:flutter/material.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.repo) : super(SignUpInitial());
  SignUpRepository repo;

  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController street = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController zipcode = TextEditingController();
  final TextEditingController lat = TextEditingController();
  final TextEditingController long = TextEditingController();
  final TextEditingController phone = TextEditingController();

  bool isLoginPasswordShowing = true;

  IconData suffixIcon = Icons.visibility;

  void changeLoginPasswordSuffixIcon() {
    isLoginPasswordShowing = !isLoginPasswordShowing;
    suffixIcon =
        isLoginPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPasswordSuffixIcon());
  }

  Future<void> signUp() async {
    emit(SignUpProccess());
    try {
      final result = await repo.signUp(
        email: email.text,
        username: username.text,
        password: password.text,
        firstname: firstname.text,
        lastname: lastname.text,
        city: city.text,
        street: street.text,
        number: int.parse(number.text),
        zipcode: zipcode.text,
        lat: lat.text,
        long: long.text,
        phone: phone.text,
      );
      if (result) {
        emit(SignUpSucess());
      } else {
        emit(SignUpFailure());
      }
    } catch (e) {
      log(e.toString());
      emit(SignUpFailure());
    }
  }
}
