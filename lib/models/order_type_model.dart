import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
List<String>orderList=[
  'under construction',
  'Ready to send',
  'Awaiting arrival',
  'exchange',
  'return',
];
List<DropdownMenuItem<String>>dropDownMenuList= [
  DropdownMenuItem(
    value: '0',
    child:Text('Day',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '1',
    child:Text('Week',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '2',
    child:Text('Month',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '3',
    child:Text('Year',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
];