import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:ecommerce_mobile/features/splash/splash_screen.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        fontFamily: 'Poppins',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: Color(0xff15256E),
            foregroundColor: Color(0xffFFFFFF),
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Color(0xff15256E)),
            padding: EdgeInsets.symmetric(vertical: 14),
            foregroundColor: Color(0xff15256E),
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xffF3F1F1),
          filled: true,
          hintStyle: TextStyle(color: Color(0xffC2BDBD)),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff15256E),
          centerTitle: true,
          toolbarHeight: 100,
          surfaceTintColor: Color(0xff15256E),
          leadingWidth: 150,
        ),
      ),

      home: SplashScreen(),
    );
  }
}
