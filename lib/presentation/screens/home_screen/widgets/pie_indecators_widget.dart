import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PieIndecatorsWidget extends StatelessWidget {
  const PieIndecatorsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.px),
      height: 40.h,
      width: double.infinity,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
                value: 10,
                radius: 100,
                borderSide: BorderSide.none,
                color: Colors.greenAccent,
                title: 'Earnings',
                titlePositionPercentageOffset: 0.4,
                titleStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.px,
                    fontWeight: FontWeight.w900
                )
            ),
            PieChartSectionData(
                value: 3,
                radius: 95,
                borderSide: BorderSide.none,
                color: Colors.redAccent,
                titlePositionPercentageOffset: 0.4,
                title: 'Spendings',
                titleStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.px,
                    fontWeight: FontWeight.w900
                )
            ),
          ],
          centerSpaceColor: Colors.cyanAccent.shade100,
          sectionsSpace: 10,
        ),
      ).animate().slideY(curve: Curves.easeInOut,begin:1.5,end: 0,duration: 800.ms),
    );
  }
}
