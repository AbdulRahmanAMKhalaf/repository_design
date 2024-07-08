import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderAndItemWidget extends StatelessWidget {
  const OrderAndItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '#Order: 043321454',
          style: TextStyle(
            fontSize: 18.px,
            fontWeight: FontWeight.w800,
            color: Colors.grey.shade600,
          ),
        ),
        Text(
          '#Item: 500',
          style: TextStyle(
            fontSize: 18.px,
            fontWeight: FontWeight.w800,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
