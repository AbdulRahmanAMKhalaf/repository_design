import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BarIndecatorsWidget extends StatelessWidget {
  const BarIndecatorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: double.infinity,
      child: BarChart(
        BarChartData(
          barGroups: [
            BarChartGroupData(x: 0,
              barRods: [
                BarChartRodData(toY: 10000,color: Colors.greenAccent,width: 15),
              ],

            ),
            BarChartGroupData(x: 0,
              barRods: [
                BarChartRodData(toY: 3000,color: Colors.redAccent,width: 15),
              ],

            ),
          ],
          minY: 0,
          maxY: 20000,
          backgroundColor: Colors.white,
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
              bottomTitles: AxisTitles(
                  axisNameSize: 35,
                  sideTitles: SideTitles(
                    showTitles: false,
                  )
              ),
              rightTitles: AxisTitles(drawBelowEverything: false),
              topTitles: AxisTitles(drawBelowEverything: false)
          ),
        ),
      ),
    );
  }
}
