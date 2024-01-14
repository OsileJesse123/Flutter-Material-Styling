import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: _loginBackground(context, theme)
    );
  }

  Widget _loginBackground(BuildContext context, ThemeData theme){
    return  SizedBox(
      height: 400,
      width: double.maxFinite,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(loginBackgroundImage),
            fit: BoxFit.fill
          )
        ),
      ),
    );
  }
}

/*
SvgPicture.asset(
doorDashLogo,
width: 200.0,
height: 200.0,
),
const SizedBox(width: 8.0,),
Text(
'DOORDASH'.hardcoded,
style: theme.textTheme.displayMedium?.copyWith(
color: theme.primaryColor
),
),
*/
