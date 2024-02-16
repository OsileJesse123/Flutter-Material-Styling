import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';

class SalesItemWidget2 extends StatelessWidget {
  const SalesItemWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 370,
      decoration: const BoxDecoration(
        color: kStylingRed200,
        borderRadius: BorderRadius.all(Radius.circular(5,),),
      ),
      child: Row(
        children: [ 
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 18, 0, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get 10% off gift cards'.hardcoded,
                    style: theme.textTheme.labelLarge,
                  ),
                  gapH8,
                  Text(
                    'Easy to spend.'.hardcoded,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    'Min \$25 purchase. Terms apply.'.hardcoded,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  gapH4,
                  ElevatedButton(
                    onPressed: (){
            
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primaryContainer,
                      foregroundColor: theme.colorScheme.onPrimary,
                      textStyle: theme.textTheme.labelLarge,
                      minimumSize: Size(150, 35)
                    ), 
                    child: Text('Shop gift cards'.hardcoded),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: AspectRatio(
            aspectRatio: 12/18,
            child: Image.asset(
              doordashSalesImage,
              fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}