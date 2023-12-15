import 'package:fake_store_api/common/toast_message.dart';
import 'package:fake_store_api/components/my_text_field.dart';
import 'package:fake_store_api/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSucess) {
          showToast(message: "Welcome!");
          Navigator.pushNamed(context, "/home");
        } else if (state is SignUpFailure) {
          showToast(
            message: "Unable to register with these fields",
            isError: true,
          );
        }
      },
      builder: (context, state) => Form(
        key: BlocProvider.of<SignUpCubit>(context).signUpKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: MyTextField(
                  controller: BlocProvider.of<SignUpCubit>(context).email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "E-mail",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(
                    Icons.email,
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
                  controller: BlocProvider.of<SignUpCubit>(context).username,
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
                  controller: BlocProvider.of<SignUpCubit>(context).password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  isObscure: BlocProvider.of<SignUpCubit>(context)
                      .isLoginPasswordShowing,
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 30,
                    color: Colors.black,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        BlocProvider.of<SignUpCubit>(context)
                            .changeLoginPasswordSuffixIcon();
                      });
                    },
                    child: Icon(
                      BlocProvider.of<SignUpCubit>(context).suffixIcon,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: MyTextField(
                  controller: BlocProvider.of<SignUpCubit>(context).firstname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "First name",
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(
                    Icons.person_pin_rounded,
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
                  controller: BlocProvider.of<SignUpCubit>(context).lastname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Last name",
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(
                    Icons.person_pin_rounded,
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
                  controller: BlocProvider.of<SignUpCubit>(context).city,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "City",
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: const Icon(
                    Icons.location_city,
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
                  controller: BlocProvider.of<SignUpCubit>(context).street,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Street",
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: const Icon(
                    Icons.location_on,
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
                  controller: BlocProvider.of<SignUpCubit>(context).number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Number",
                  keyboardType: TextInputType.number,
                  prefixIcon: const Icon(
                    Icons.numbers_sharp,
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
                  controller: BlocProvider.of<SignUpCubit>(context).zipcode,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Zip Code",
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: const Icon(
                    Icons.zoom_in_sharp,
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
                  controller: BlocProvider.of<SignUpCubit>(context).lat,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Lat",
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: const Icon(
                    Icons.location_searching_outlined,
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
                  controller: BlocProvider.of<SignUpCubit>(context).long,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field needs to be filled in";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Long",
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: const Icon(
                    Icons.location_searching_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              state is SignUpProccess
                  ? CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    )
                  : SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (BlocProvider.of<SignUpCubit>(context)
                              .signUpKey
                              .currentState!
                              .validate()) {
                            context.read<SignUpCubit>().signUp();
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
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
