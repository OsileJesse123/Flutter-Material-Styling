import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/constants.dart';
import 'package:flutter_material_styling/util/extensions.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final locations = <String>["1226 University Dr", "1224 University Dr", "1222 University Dr"];
  String? dropdownValue;
  int _selectedIndex = 0;

  Widget _page(){
    switch(_selectedIndex){
      case 0:
        return Container();
      case 1:
        return Container();
      case 2:
        return Container();  
      case 3:
        return Container();
      case 4:
        return Container();
      default:
        throw UnimplementedError('No implemented screen for this index!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 220,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.location_on_rounded,
              ),
              gapW8,
              Expanded(
                child: SizedBox(
                  width: 500,
                  child: DropdownButton<String>(
                    value: dropdownValue ?? "1226 University Dr",
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: theme.colorScheme.onSurface,
                    ),
                    underline: Container(height: 0,),
                    items: locations.map((e) => DropdownMenuItem<String>(value: e,child: Text(e))).toList(),
                     onChanged: (value){
                      dropdownValue = value!;
                      setState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        actionsIconTheme: IconThemeData(color: theme.colorScheme.onSurface),
        actions: [
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.account_circle_outlined,),),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.notifications_outlined,),),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.shopping_cart_outlined,),),
        ],
      ),
      body: _page(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home
            ),
            label: 'Home'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home
            ),
            label: 'Grocery'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home
            ),
            label: 'Retail'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home
            ),
            label: 'Browse'.hardcoded
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home
            ),
            label: 'Orders'.hardcoded
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (value){
          _selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}

