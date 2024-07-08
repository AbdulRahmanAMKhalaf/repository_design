import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DateAndPercentageWidget extends StatelessWidget {
  const DateAndPercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Date: 20/12/2050',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 11.px),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.arrow_upward_rounded,
              color: Colors.greenAccent,
              size: 14.px,
            ),
            Text(
              '100%',
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w800,
                  fontSize: 15.px),
            ),
          ],
        )
            .animate(
          onPlay: (controller) => controller.repeat(),
        )
            .shimmer(
          delay: 600.ms,
          duration: 1000.ms,
        ),
      ],
    );
  }
}
