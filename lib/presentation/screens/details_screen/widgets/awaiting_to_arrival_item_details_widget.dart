import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/date_and_percentage_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/destination_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/identify_item.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/order_and_item_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AwaitingToArrivalItemDetailsWidget extends StatelessWidget {
  const AwaitingToArrivalItemDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.px)),
      child: Padding(
        padding: EdgeInsets.all(2.w),
        child: ExpansionTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                width: 20.w,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15.px)
                ),
              )
                  .animate(
                onPlay: (controller) => controller.repeat(),
              )
                  .shimmer(
                delay: 2000.ms,
                duration: 1000.ms,
              ),
              SizedBox(
                width: 2.w,
              ),
              const IdentifyItem(),
            ],
          ),
          trailing: const DateAndPercentageWidget(),
          tilePadding: EdgeInsets.symmetric(horizontal: 2.w),
          backgroundColor: Colors.grey.shade100,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10.px,
            ),
            borderSide: BorderSide(color: Colors.black, width: 1.w),
          ),
          collapsedBackgroundColor: Colors.white12,
          collapsedIconColor: Colors.cyanAccent.shade700,
          collapsedShape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.px),
              borderSide: BorderSide(width: 1.w, color: Colors.greenAccent.shade700)),
          iconColor: Colors.red,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const OrderAndItemWidget(),
                SizedBox(
                  height: 1.h,
                ),
                const DestinationWidget(),
                SizedBox(height: 1.h,),
                Text('Estimated Arrival: 2 days',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.px
                ),
                ),
                SizedBox(height: 1.h,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
