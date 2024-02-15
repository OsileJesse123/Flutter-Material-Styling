import 'package:flutter/material.dart';
import 'package:flutter_material_styling/widgets/fu_dropdown_widget.dart';
import 'package:flutter_svg/svg.dart';

class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({super.key, required this.filterTitle, this.iconPath, this.dropDownItems});

  final String filterTitle;
  final String? iconPath;
  final List<String>? dropDownItems;

  Widget _determineItemWidgetToShow(BuildContext context){
    final theme = Theme.of(context);
    
    if(dropDownItems != null && iconPath != null){
      Chip(
        label: Container(
          height: 20,
          child: FUDropdownWidget(dropdownList: dropDownItems!),
        ),
        avatar: SvgPicture.asset(
              iconPath!,
              colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn,),
            ),
        backgroundColor: theme.colorScheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
      );
    }

    if(iconPath != null){
      return Chip(
            label: Text(filterTitle),
            avatar: SvgPicture.asset(
                  iconPath!,
                  colorFilter: ColorFilter.mode(theme.colorScheme.onBackground, BlendMode.srcIn,),
                ),
            backgroundColor: theme.colorScheme.background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
      );
    }

    return Chip(
            label: Text(filterTitle),
            backgroundColor: theme.colorScheme.background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32,),),
          );
  }

  @override
  Widget build(BuildContext context) {
    return _determineItemWidgetToShow(context);
  }
}