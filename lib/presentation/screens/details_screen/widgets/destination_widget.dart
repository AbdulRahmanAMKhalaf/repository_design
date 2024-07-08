import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'From: Amman',
          style: TextStyle(
            fontSize: 20.px,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        Image(
          height: 6.h,
          width: 20.w,
          color: Colors.cyanAccent.shade400,
          image: const AssetImage('Assets/icons/car.png'),
        ),
        Text(
          'To: US',
          style: TextStyle(
            fontSize: 20.px,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
