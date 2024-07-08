import 'package:flutter/material.dart';
import 'package:repository_design/models/order_type_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      borderRadius: BorderRadius.all(Radius.circular(15.px),),
      dropdownColor: Colors.grey.shade100,
      padding: EdgeInsets.all(5.px),
      menuMaxHeight: 100,
      hint: Text('Select Day,Week,...',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.px,
            fontWeight: FontWeight.w800
        ),
      ),
      items:dropDownMenuList,
      onChanged: (Object? value) {  },);
  }
}
