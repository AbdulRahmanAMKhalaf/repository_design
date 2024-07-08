import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        margin: EdgeInsets.all(10.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.px),
        ),
        child:  Container(
          height: 20.h,
          width: 40.w,
          color: Colors.transparent,
          child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                      color: Colors.red,
                      title: 'A',
                      titleStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.px
                      ),
                      radius: 40,
                      titlePositionPercentageOffset: 0.3,
                      value: 3
                  ),
                  PieChartSectionData(
                      color: Colors.blue,
                      title: 'B',
                      titleStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.px
                      ),
                      radius: 50,
                      titlePositionPercentageOffset: 0.3,
                      value: 6
                  ),
                  PieChartSectionData(
                      color: Colors.greenAccent,
                      title: 'C',
                      titleStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.px
                      ),
                      radius: 60,
                      titlePositionPercentageOffset: 0.3,
                      value: 10
                  ),
                ],
                sectionsSpace: 10,
                centerSpaceColor: Colors.cyan.shade200,
                centerSpaceRadius: 90,
              )
          ),
        ).animate().slideY(begin: -1.5,end: 0,duration: 600.ms).flipV(duration: 900.ms,end: 0,begin: -1.5,).fadeIn(duration: 1000.ms,),
      ),
    );
  }
}
