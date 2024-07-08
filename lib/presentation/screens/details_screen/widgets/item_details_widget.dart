import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white70.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.px)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
        ),
      ),
    );
  }
}
