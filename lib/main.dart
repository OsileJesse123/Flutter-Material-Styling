import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Material Styling',
      debugShowCheckedModeBanner: false,
      theme: _buildStylingTheme(),
      home: const LoginPage(),
      routes: {
        loginRoute: (BuildContext context) => const LoginPage(),
      },
    );
  }
}

ThemeData _buildStylingTheme(){
  final base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
      colorScheme: const ColorScheme(
          background: Colors.white,
          brightness: Brightness.light,
          primary: kStylingRed800,
          onPrimary: Colors.white,
          secondary: kStylingBlue800,
          onSecondary: kStylingBlue50,
          error: kStylingRed900,
          onError: Colors.white,
          onBackground: kStylingBlack900,
          surface: Colors.white,
          onSurface: kStylingBlack900,
      ),
      textTheme: TextTheme(
        displayLarge: base.textTheme.displayLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        labelLarge: base.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w500,
        ),
        labelMedium: base.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w400,
        ),
        titleMedium: base.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: base.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ).apply(
        fontFamily: 'TTNorms'
      )
  );
}

