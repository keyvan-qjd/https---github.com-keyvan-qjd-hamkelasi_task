import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hamkelasi/pages/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'pages/homeScreen.dart';
import 'pages/loginScreen.dart';

//00c5c1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x00c5c1)),
        // checkboxTheme: CheckboxThemeData(
        //   fillColor: MaterialStateProperty.all(
        //       Colors.grey.shade100), // Background color
        // ),checkboxTheme: CheckboxThemeData(
        //   fillColor: MaterialStateProperty.all(
        //       Colors.grey.shade100), // Background color
        // ),
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
