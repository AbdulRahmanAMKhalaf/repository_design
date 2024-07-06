import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EarningWidget extends StatelessWidget {
  const EarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.px),
        boxShadow:[
          BoxShadow(
              color: Colors.black87.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(1.px,2.px)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.monetization_on_outlined,color: Colors.black87,size: 30.px,),
                SizedBox(width: 1.w,),
                Text('Earnings',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.w700,
                    fontSize: 25.px,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: '\$10000',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.px,
                          color: Colors.black87,
                        )
                    ),
                    const TextSpan(text: ' '),
                    TextSpan(
                        text: '20%',
                        style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontSize: 15.px,
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ],
                )),
                SizedBox(width: 2.w,),
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
            Text('5.00%',
              style: TextStyle(
                  color: Colors.greenAccent.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.px
              ),
            ),
          ],
        ),
      ),
    );
  }
}
