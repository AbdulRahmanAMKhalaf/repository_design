
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/screens/details_screen/details_screen_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProgressChildWidget extends StatelessWidget {
  const ProgressChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.bar_chart,color: Colors.black,size: 35.px,),
                  Text('Progress',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.px,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: '\$7000',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.px,
                            color: Colors.black87,
                          )
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                          text: '17%',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              fontSize: 12.px,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  )),
                  SizedBox(width: 1.w,),
                  Container(
                    height: 2.5.h,
                    width: 5.w,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        borderRadius: BorderRadius.circular(5.px)
                    ),
                    child: Icon(Icons.arrow_upward_rounded,color: Colors.green,size: 20.px,),
                  ),
                ],
              ),
              Text('4.00%',
                style: TextStyle(
                    color: Colors.greenAccent.shade400,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.px
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 45.w,
            height: 15.h,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      spreadRadius: 1,
                      blurRadius: 10
                  ),
                ],
                color: Colors.cyanAccent.shade100,
                borderRadius: BorderRadius.circular(15.px)
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsScreenView(),),);
              },
              child: Center(
                child: Text('More\ndetails',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 35.px
                  ),
                ),
              ),
            ),
          ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color: Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
        ],
      ),
    );
  }
}
