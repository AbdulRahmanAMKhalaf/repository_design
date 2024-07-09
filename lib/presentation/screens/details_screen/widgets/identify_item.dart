import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IdentifyItem extends StatelessWidget {
  const IdentifyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Item Name',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 18.px),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            'Client Name:\nAbdulRahman Ayman',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w800,
                fontSize: 13.px),
          ),
        ],
      ),
    );
  }
}
