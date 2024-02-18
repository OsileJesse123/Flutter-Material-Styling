import 'package:flutter/material.dart';
import 'package:flutter_material_styling/repository/repository.dart';
import 'package:flutter_material_styling/util/colors.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';
import 'package:flutter_material_styling/widgets/category_item_widget.dart';
import 'package:flutter_material_styling/widgets/category_item_widget_2.dart';
import 'package:flutter_material_styling/widgets/filter_item_widget.dart';
import 'package:flutter_material_styling/widgets/sales_item_widget.dart';
import 'package:flutter_material_styling/widgets/sales_item_widget_2.dart';
import 'package:flutter_material_styling/widgets/saved_stores_item_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ratings = <String>["Ratings", "Rating 2", "Rating 3", "Rating 4",];
  String? dropdownValue;
  final dashRepo = DashRepository();
  final lastSizedBoxHeight = 300.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SizedBox(
        height: screenHeight + screenHeight/12 ,
        child: Column(
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
                          constraints: BoxConstraints.tight(const Size.fromRadius(23)),
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
                    SizedBox(
                      height: 90,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        itemCount: dashRepo.getDoorDashCategories1().length,
                        itemBuilder: (context, index) {
                          return CategoryItemWidget(doorDashCategory: dashRepo.getDoorDashCategories1()[index]);
                        }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 10,); },
                      ),
                    ),
                  ],
                ),
              ),
            ), 
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  gapH4,
                  Divider(color: theme.dividerColor, thickness: 2,),
                  gapH8,
                  SizedBox(
                    height: 75,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) => CategoryItemWidget2(doorDashCategory: dashRepo.getDoorDashCategories2()[index]),
                       separatorBuilder: (context, index) => const SizedBox(width: 20,), 
                       itemCount: dashRepo.getDoorDashCategories2().length),
                  ),
                  SizedBox(
                    height: 45,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      children: [
                        gapW16,
                        FilterItemWidget(filterTitle: 'DashPass'.hardcoded, iconPath: doorDashLogo,),
                        gapW8,
                        FilterItemWidget(filterTitle: 'Pickup'.hardcoded,),
                        gapW8,
                        FilterItemWidget(filterTitle: 'Offer'.hardcoded, iconPath: offersIcon,),
                        gapW8,
                        FilterItemWidget(filterTitle: 'Ratings'.hardcoded, iconPath: ratingsIcon, dropDownItems: ratings,),
                        gapW8,
                      ],
                    ),
                  ),
                  gapH16,
                  SizedBox(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      children: const [
                        gapW16,
                        SalesItemWidget(),
                        gapW8,
                        SalesItemWidget2()
                      ],
                    ),
                  ),
                  gapH16,
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saved stores'.hardcoded,
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontSize: 19,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                  
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(4),
                            backgroundColor: kStylingGrey200,
                            foregroundColor: theme.colorScheme.onBackground,
                            elevation: 0,
                          ), 
                          child: const Icon(Icons.arrow_forward, size: 18,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: lastSizedBoxHeight,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) => SavedStoresItemWidget(savedStores: dashRepo.getSavedStores()[index]),
                       separatorBuilder: (context, index) => const SizedBox(width: 20,), 
                       itemCount: dashRepo.getSavedStores().length),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}