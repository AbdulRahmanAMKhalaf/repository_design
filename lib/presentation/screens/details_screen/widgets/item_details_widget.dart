import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/date_and%20percentage_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/destination_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/identify_item.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/order_and_item_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({super.key});

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
              CircleAvatar(
                minRadius: 25.px,
                maxRadius: 30.px,
                backgroundColor: Colors.red,
              ).animate(onPlay: (controller) => controller.repeat(),).shimmer(delay: 2000.ms, duration: 1000.ms,),
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
          childrenPadding: EdgeInsets.all(1.w),
          collapsedBackgroundColor: Colors.white12,
          collapsedIconColor: Colors.cyanAccent.shade700,
          collapsedShape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.px),
              borderSide: BorderSide(width: 1.w, color: Colors.black)),
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: () {
                    showDialog(context: context,
                        builder: (context) => Center(
                      child: Container(
                        margin: EdgeInsets.all(6.w),
                        height: 65.h,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.px),
                          child: Scaffold(
                            body: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.px,),
                                    color: Colors.grey.shade300
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(2.0.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.px),
                                      color: Colors.white12,
                                    ),
                                    width: double.infinity,
                                    child: ListView(
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
                                  ).animate().fadeIn(duration: 1000.ms,curve: Curves.easeInOut),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),);
                  }, child: Text('History',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      decoration: TextDecoration.underline
                    ),
                  ),
                ),

                /*
                Text('Esimated Time: 5 Min',
                  style: TextStyle(
                    fontSize: 18.px,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade600,
                    decoration: TextDecoration.underline
                  ),
                ).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: 1000.ms,delay: 800.ms),
*/
                ),],
            ),
          ],
        ),
      ),
    );
  }
}
