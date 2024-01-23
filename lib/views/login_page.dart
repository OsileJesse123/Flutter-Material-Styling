import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({super.key});

  static const Gradient _maskingGradient = LinearGradient(
    // This gradient goes from fully transparent to fully opaque black...
    colors: [Colors.transparent, Colors.black],
    // ... from the top (transparent) to half (0.5) of the way to the bottom.
    stops: [0.0, 0.2],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: _loginBackground(context, theme)
    );
  }

  Widget _continueWithButton(Widget icon, Text label, ThemeData theme){
    return ElevatedButton(
      onPressed: (){

    }, 
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size.fromHeight(buttonHeight),
      backgroundColor: theme.colorScheme.outline,
      foregroundColor: theme.colorScheme.onBackground,
    ), child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Expanded(
            child: Center(
              child: label,
            ),
          )
        ],
      ),
    );
  }

  Widget _loginBackground(BuildContext context, ThemeData theme){
    return  SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(doorDashBg),
            fit: BoxFit.fill
          )
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double paddingTop = constraints.maxHeight < 700 ? 200 : 270;
            return Padding(
              padding: EdgeInsets.only(top: paddingTop),
              child: ShaderMask(
                shaderCallback: (bounds) => _maskingGradient.createShader(bounds),
                blendMode: BlendMode.dstIn,
                child: SingleChildScrollView(
                  child: Container(
                    color: theme.colorScheme.background,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 130, 16, 16),
                      child: Column(
                        children: [
                          Text(
                            'Discover more from your neighboorood'.hardcoded,
                            style: theme.textTheme.displayLarge,
                          ),
                          gapH16,
                          ElevatedButton(
                            onPressed: (){
                          
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              textStyle: theme.textTheme.labelLarge,
                              minimumSize: const Size.fromHeight(buttonHeight),
                            ), 
                          child: Text('Continue with email'.hardcoded,),
                          ),
                          gapH4,
                          _continueWithButton(SvgPicture.asset(googleIcon, width: buttonIconSize, height: buttonIconSize,), Text('Continue with Google'.hardcoded), theme),
                          gapH4,
                          _continueWithButton(SvgPicture.asset(facebookIcon, width: buttonIconSize, height: buttonIconSize,), Text('Continue with Facebook'.hardcoded), theme),
                          gapH4,
                          _continueWithButton(SvgPicture.asset(appleIcon, width: buttonIconSize, height: buttonIconSize,), Text('Continue with Apple'.hardcoded), theme),
                          gapH8,
                          TextButton(onPressed: (){
                
                          }, 
                          child: Text(
                            'Search Nearby'.hardcoded,
                            style: theme.textTheme.labelLarge,
                            ),
                          ),
                          gapH8,
                          Divider(
                            thickness: 1,
                            color: theme.colorScheme.outline,
                          ),
                          gapH8,
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By tapping Continue with Email, Google, Facebook or Apple, or by continuing as Guest, you agree to DoorDash\'s '.hardcoded,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Terms & Conditions'.hardcoded,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: kStylingBlue400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and '.hardcoded,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy'.hardcoded,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: kStylingBlue400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ]
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}




