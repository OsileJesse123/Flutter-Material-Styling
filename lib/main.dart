import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/views/dashboard_page.dart';
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
        dashboardRoute: (BuildContext context) => const DashboardPage(),
      },
    );
  }
}

ThemeData _buildStylingTheme(){
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
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
          outline: kStylingGrey200,
      ),
      textTheme: base.textTheme.copyWith(
        displayLarge: base.textTheme.displayLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        labelLarge: base.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
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
        fontFamily: 'TTNorms',
        displayColor: kStylingBlack900,
        bodyColor: kStylingBlack900
      ),
      textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kStylingBlack900,
    ),
  );
}

