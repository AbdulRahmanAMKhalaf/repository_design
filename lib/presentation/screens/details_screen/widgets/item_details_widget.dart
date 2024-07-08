import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.px)
      ),
      child: Padding(
        padding:  EdgeInsets.all(2.w),
        child: ExpansionTile(title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              minRadius: 25.px,
                maxRadius: 30.px,
              backgroundColor: Colors.red,
            ).animate(onPlay: (controller) => controller.repeat(),).shimmer(delay: 2000.ms,duration: 1000.ms,),
            SizedBox(width: 2.w,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item Name',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.px
                  ),
                  ),
                  SizedBox(height: 0.5.h,),
                  Text('Client Name:\n  AbdulRahman Ayman',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w800,
                    fontSize: 13.px
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_upward_rounded,color: Colors.greenAccent,size: 14.px,),
              Text('100%',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w800,
                    fontSize: 15.px
                ),
              ),
            ],
          ).animate(onPlay: (controller) => controller.repeat(),).shimmer(delay: 600.ms,duration: 1000.ms,),
          tilePadding: EdgeInsets.symmetric(horizontal: 2.w),
          backgroundColor: Colors.grey.shade100,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.px,),
            borderSide: BorderSide(color: Colors.black,width: 1.w),
          ),
          childrenPadding: EdgeInsets.all(1.w),
          collapsedBackgroundColor: Colors.white12,
          collapsedIconColor: Colors.cyanAccent.shade700,
          collapsedShape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.px),
            borderSide: BorderSide(width: 1.w,color: Colors.black)
          ),
          iconColor: Colors.red,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Esimated Time: 5 Min',
                  style: TextStyle(
                    fontSize: 18.px,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade600,
                    decoration: TextDecoration.underline
                  ),
                ).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: 1000.ms,delay: 800.ms),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('#Order: 043321454',
                    style: TextStyle(
                      fontSize: 18.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade600,

                    ),
                    ),
                    Text('#Item: 500',
                      style: TextStyle(
                        fontSize: 18.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey.shade600,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text('From: Amman',
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
                      image: const AssetImage('Assets/icons/car.png'),),
                    Text('To: US',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        /*Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  minRadius: 25.px,
                  maxRadius: 30.px,
                ),
                SizedBox(width: 2.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Full name',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.px,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Text('Estimated Time: 5 min',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.px,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text('To:- Carlos Darras',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15.px,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('NumberOfItem : 4',
                style:
                TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 15.px
                ),
              ),
            ),
          ],
        ),*/
      ),
    );
  }
}
