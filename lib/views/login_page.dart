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
      height: double.maxFinite,
      width: double.maxFinite,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(loginBackgroundImage2),
            fit: BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 350),
          child: Container(
            color: theme.colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 50, 16, 20),
              child: Column(
                children: [
                  Text(
                    'Discover more from your neighboorood'.hardcoded,
                    style: theme.textTheme.displayLarge,
                  ),
                  const SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: (){

                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: theme.colorScheme.onPrimary,
                      textStyle: theme.textTheme.labelLarge,
                      minimumSize: const Size.fromHeight(40),
                    ), 
                  child: Text('Continue with email'.hardcoded,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




