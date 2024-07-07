import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List<String>orderList=[
  'under construction',
  'Ready to send',
  'Awaiting arrival',
  'exchange',
  'return',
];
List<String>iconsList=[
  'Assets/icons/overview.png',
  'Assets/icons/time-management.png',
  'Assets/icons/checked.png',
  'Assets/icons/steering-wheel.png',
  'Assets/icons/exchange.png',
  'Assets/icons/return-box.png',
];
List<DropdownMenuItem<String>>dropDownMenuList= [
  DropdownMenuItem(
    value: '1',
    child:Text('Day',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '2',
    child:Text('Week',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '3',
    child:Text('Month',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
  DropdownMenuItem(
    value: '4',
    child:Text('Year',
      style: TextStyle(
        fontSize: 20.px,
        fontWeight: FontWeight.w800,
        color: Colors.cyan.shade400,

      ),
    ),
  ),
];