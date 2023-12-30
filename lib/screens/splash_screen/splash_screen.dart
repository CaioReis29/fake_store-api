import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fake_store_api/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height = 0.0;
  double width = 0.0;
  int timeIcon = 4;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        height = 350;
        width = 400;
      });
      final nav = Navigator.of(context);

      await Future.delayed(const Duration(seconds: 6));

      nav.pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeScreen(),
          settings: const RouteSettings(name: '/home'),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              curve: Curves.bounceInOut,
              onEnd: () => setState(() {
                height = 0;
                width = 0;
                timeIcon = 1;
              }),
              duration: Duration(seconds: timeIcon),
              height: height,
              width: width,
              child: Hero(
                tag: 'assets/fake_store_logo.png',
                child: Image.asset(
                  'assets/fake_store_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Fake Store',
                  cursor: '',
                  textAlign: TextAlign.center,
                  curve: Curves.bounceIn,
                  textStyle: TextStyle(
                    fontSize: 40.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Developed by Caio Reis',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
