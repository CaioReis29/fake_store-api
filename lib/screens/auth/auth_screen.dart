import 'package:fake_store_api/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fake_store_api/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:fake_store_api/data/repositories/auth/sign_in/sign_in_repository.dart';
import 'package:fake_store_api/data/repositories/auth/sign_up/sign_up_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fake_store_api/screens/auth/sign_in_screen.dart';
import 'package:fake_store_api/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Welcome to Fake Store APP",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TabBar(
                  controller: tabController,
                  unselectedLabelColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.5),
                  labelColor: Theme.of(context).colorScheme.onBackground,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      BlocProvider<SignInCubit>(
                        create: (context) => SignInCubit(SignInRepository()),
                        child: const SignInScreen(),
                      ),
                      BlocProvider<SignUpCubit>(
                        create: (context) => SignUpCubit(SignUpRepository()),
                        child: const SignUpScreen(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
