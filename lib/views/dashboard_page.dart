import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final locations = <String>["1226 University Dr", "1224 University Dr", "1222 University Dr"];


  @override
  Widget build(BuildContext context) {
    String dropdownValue = locations.first;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 170,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
              ),
              gapW8,
              DropdownButton<String>(
                value: dropdownValue,
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
            ],
          ),
        ),
      ),
    );
  }
}

