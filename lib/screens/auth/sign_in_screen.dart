import 'package:fake_store_api/common/toast_message.dart';
import 'package:fake_store_api/components/my_text_field.dart';
import 'package:fake_store_api/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSucess) {
          showToast(message: "Welcome!");
          Navigator.pushNamed(context, "/home");
        } else if (state is SignInFailure) {
          showToast(
            message: "Incorrect username or password",
            isError: true,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<SignInCubit>(context).loginKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: MyTextField(
                  controller: BlocProvider.of<SignInCubit>(context).userName,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "User name",
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: MyTextField(
                  controller: BlocProvider.of<SignInCubit>(context).password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  isObscure: BlocProvider.of<SignInCubit>(context)
                      .isLoginPasswordShowing,
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 30,
                    color: Colors.black,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        BlocProvider.of<SignInCubit>(context)
                            .changeLoginPasswordSuffixIcon();
                      });
                    },
                    child: Icon(
                      BlocProvider.of<SignInCubit>(context).suffixIcon,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              state is SignInProccess
                  ? CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    )
                  : SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (BlocProvider.of<SignInCubit>(context)
                              .loginKey
                              .currentState!
                              .validate()) {
                            context.read<SignInCubit>().signIn();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          elevation: 4,
                          surfaceTintColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
