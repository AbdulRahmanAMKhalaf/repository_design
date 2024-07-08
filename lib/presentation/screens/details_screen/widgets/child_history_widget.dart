import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/item_details_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChildHistoryWidget extends StatelessWidget {
  const ChildHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.px),
        color: Colors.white12,
      ),
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.all(2.w),
        children: [
          CircleAvatar(
            minRadius: 40.px,
            maxRadius: 45.px,
            backgroundColor: Colors.red,
          ),
          SizedBox(height: 0.5.h,),
          Text('Item Name\nHistory',
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.px,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 1.h,),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(2.px),
              itemBuilder: (context, index) => const ItemDetailsWidget(),
              separatorBuilder: (context, index) => SizedBox(height: 1.h,),
              itemCount: 9),
        ],
      ),
    ).animate().fadeIn(duration: 1000.ms,curve: Curves.easeInOut);
  }
}
