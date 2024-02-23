import 'package:fake_store_api/bloc_observer.dart';
import 'package:fake_store_api/core/injects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fake_store_api/core/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await setupInject();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await ScreenUtil.ensureScreenSize();

  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());

  FlutterNativeSplash.remove();
}
