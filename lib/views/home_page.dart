import 'package:flutter/material.dart';
import 'package:flutter_material_styling/repository/repository.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_material_styling/widgets/category_item_widget.dart';
import 'package:flutter_material_styling/widgets/category_item_widget_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final categoryItems = DashRepository().getDoorDashCategories1();
    final categoryItems2 = DashRepository().getDoorDashCategories2();

    return Column(
      children: [
        gapH16,
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 2.5,
                      borderRadius: const BorderRadius.all(Radius.circular(32),),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          cursorColor: theme.colorScheme.onBackground,
                          cursorHeight: 18,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search DoorDash'.hardcoded,
                            hintStyle: theme.textTheme.bodySmall?.copyWith(fontSize: 14),
                            filled: true,
                            contentPadding: const EdgeInsets.fromLTRB(0, 5, 12, 5),
                            fillColor: theme.colorScheme.background,
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(32),),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size.fromRadius(23)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Customize the shadow color
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 3), // Changes the position of the shadow
                            ),
                          ]
                      ),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: const Center(
                          child: Icon(Icons.map_outlined,),),),
                    )
                  ],
                ),
                gapH20,
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) {
                      return CategoryItemWidget(doorDashCategory: categoryItems[index]);
                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
                  ),
                ),
              ],
            ),
          ),
        ), 
        Expanded(
          flex: 3,
          child: Column(
            children: [
              gapH4,
              Divider(color: theme.dividerColor, thickness: 2,),
              gapH8,
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) => CategoryItemWidget2(doorDashCategory: categoryItems2[index]),
                   separatorBuilder: (context, index) => const SizedBox(width: 20,), 
                   itemCount: categoryItems2.length),
              )
            ],
          ))
      ],
    );
  }
}