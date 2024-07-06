import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/screens/home_screen/widgets/bar_indecators_widget.dart';
import 'package:repository_design/screens/home_screen/widgets/earning_widget.dart';
import 'package:repository_design/screens/home_screen/widgets/pie_indecators_widget.dart';
import 'package:repository_design/screens/home_screen/widgets/progress_child_widget.dart';
import 'package:repository_design/screens/home_screen/widgets/spending_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.px))
        ),
        child: ListView(
          padding: EdgeInsets.all(10.px),
          children: [
            SizedBox(height: 2.h,),
            const Row(
              children: [
                EarningWidget(),
                Spacer(),
                SpendingWidget(),
              ],
            ),
            SizedBox(height: 2.h,),
            Container(
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
              child: const ProgressChildWidget(),
            ),
            SizedBox(height: 3.h,),
            const PieIndecatorsWidget(),
            SizedBox(height: 3.h,),
            const BarIndecatorsWidget(),
          ],
        ).animate().flip(duration: 1000.ms,curve: Curves.easeInOut),
      ),
    );
  }
}
