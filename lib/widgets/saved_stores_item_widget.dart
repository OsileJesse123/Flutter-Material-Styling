import 'package:flutter/material.dart';
import 'package:flutter_material_styling/model/model.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedStoresItemWidget extends StatelessWidget {
  const SavedStoresItemWidget({super.key, required this.savedStores});

  final SavedStores savedStores;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Container(
            width: 400,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5,),),
              image: DecorationImage(
                image: AssetImage(savedStores.storeImagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: SvgPicture.asset(
                            doorDashLogo,
                            colorFilter: ColorFilter.mode(theme.colorScheme.secondary, BlendMode.srcIn),
                            width: 15,
                            height: 15,
                            ),
                          ),
                        TextSpan(
                          text: ' ${savedStores.storeName}'.hardcoded,
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                      '${savedStores.storeRating}',
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontSize: 13,
                        color: savedStores.storeRating > 4.5 ? theme.textTheme.labelLarge?.color : theme.disabledColor
                      ),
                    ),
                    gapW4,
                    SvgPicture.asset(ratingsIcon, width: 10, height: 10, colorFilter: ColorFilter.mode(savedStores.storeRating > 4.5 ? kStylingYellow600 : theme.disabledColor, BlendMode.srcIn),),
                    gapW4,
                    Text(
                      '(${savedStores.storePoints}+)',
                      style: theme.textTheme.displayMedium?.copyWith(
                        fontSize: 13,
                        color: theme.disabledColor
                      ),
                    ),
                    gapW4,
                    Icon(
                      Icons.fiber_manual_record, size: 4,
                      color: theme.disabledColor,
                    ),
                    gapW4,
                    Text(
                      '${savedStores.storeDistance} mi',
                      style: theme.textTheme.displayMedium?.copyWith(
                        fontSize: 13,
                        color: theme.disabledColor
                      ),
                    ),
                    gapW4,
                    Icon(
                      Icons.fiber_manual_record, size: 4,
                      color: theme.disabledColor,
                    ),
                    gapW4,
                    Text(
                      '${savedStores.storeTime} min',
                      style: theme.textTheme.displayMedium?.copyWith(
                        fontSize: 13,
                        color: theme.disabledColor
                      ),
                    ),
                  ],
                ),
                ],
              ),
              Icon(
                savedStores.isFavorite ? Icons.favorite : Icons.favorite_outline, 
                color: savedStores.isFavorite ? theme.colorScheme.primary : theme.disabledColor,
                size: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}