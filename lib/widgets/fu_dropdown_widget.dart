import 'package:flutter/material.dart';
import 'package:flutter_material_styling/util/extensions.dart';

class FUDropdownWidget extends StatefulWidget {
  const FUDropdownWidget({super.key, required this.dropdownList});

  final List<String> dropdownList;

  @override
  State<FUDropdownWidget> createState() => FUDropdownWidgetState();
}

class FUDropdownWidgetState extends State<FUDropdownWidget> {

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButton<String>(
            value: dropdownValue ?? widget.dropdownList[0],
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: theme.colorScheme.onSurface,
            ),
            underline: Container(height: 0,),
            items: widget.dropdownList.map((e) => DropdownMenuItem<String>(value: e,child: Text(e))).toList(),
            onChanged: (value){
              dropdownValue = value!;
              setState(() {});
            },
            hint: Text('Rating'.hardcoded),
          );
  }
}