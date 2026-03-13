import 'package:app/constants.dart';
import 'package:app/features/aplash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BoolApp());
}

class BoolApp extends StatelessWidget {
  const BoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
        textTheme: TextTheme(
          

        )
        ),
      home: const SplashView(),
    );
  }
}
