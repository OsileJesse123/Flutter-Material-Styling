import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalesItemWidget extends StatelessWidget {
  const SalesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome to '.hardcoded,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              WidgetSpan(child: SvgPicture.asset(doorDashLogo, colorFilter: ColorFilter.mode(theme.colorScheme.secondary, BlendMode.srcIn), width: 20, height: 20,),),
              TextSpan(
                text: ' DashPass'.hardcoded,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              )
            ]
          ),
        ),
        gapH8,
        Container(
          padding: const EdgeInsets.fromLTRB(24, 14, 24, 14),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(5))
          ),
          child: Column(
            children: [
              Card(
                color: kStylingOrange50,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                  child: Text(
                    'Limited time offer'.hardcoded,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: kStylingRed900,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              gapH4,
              Text(
                'You have 25% off 3 orders!'.hardcoded,
                style: theme.textTheme.displayLarge?.copyWith(
                  color: kStylingBlue50,
                  fontSize: 20,
                ),
              ),
              gapH4,
              Text(
                'Tap "Promotions" at checkout and Select Welcome Offer'.hardcoded,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: kStylingBlue50,
                  fontSize: 13,
                ),
              ),
              Text(
                'Expires after your first week on DashPass. Max value \$5'.hardcoded,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: kStylingBlue50,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}