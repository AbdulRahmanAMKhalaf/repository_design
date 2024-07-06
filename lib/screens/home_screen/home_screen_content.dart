import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.px))
        ),
        child: ListView(
          padding: EdgeInsets.all(10.px),
          children: [
          /* SizedBox(
             height: 6.h,
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) => Container(
                   decoration: BoxDecoration(
                     color: Colors.cyanAccent.shade700,
                     borderRadius: BorderRadius.circular(40.px),
                     border: Border.all(color: Colors.black,width: 4)
        
                   ),
                   child: Padding(
                     padding:  EdgeInsets.all(12.0.px),
                     child: Text(orderList[index],
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 17.px,
                       fontWeight: FontWeight.w700,
                     ),
                     ),
                   ),
                 ),
                 separatorBuilder: (context, index) => SizedBox(width: 3.w,),
                 itemCount: orderList.length),
           ),*/
            SizedBox(height: 2.h,),
            Row(
              children: [
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
                ),
                const Spacer(),
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
                          offset: Offset(-1.px,2.px)
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
                            Text('Spendings',
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
                                    text: '\$3000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30.px,
                                      color: Colors.black87,
                                    )
                                ),
                                const TextSpan(text: ' '),
                                TextSpan(
                                    text: '3%',
                                    style: TextStyle(
                                        color: Colors.redAccent.shade400,
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
                                  color: Colors.redAccent.shade100,
                                  borderRadius: BorderRadius.circular(5.px)
                              ),
                              child: Icon(Icons.arrow_upward_rounded,color: Colors.red,size: 20.px,),
                            ),
                          ],
                        ),
                        Text('1.00%',
                          style: TextStyle(
                              color: Colors.redAccent.shade400,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.px
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
              child: Padding(
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
                        Text('4.00%',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.px
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w,),
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
                        onTap: () {},
                        child: Text('More details',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 40.px
                          ),
                        ),
                      ),
                    ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color: Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.h,),
           Container(
             margin: EdgeInsets.all(20.px),
             height: 40.h,
             width: double.infinity,
             child: PieChart(
               PieChartData(
                 sections: [
                   PieChartSectionData(
                     value: 10,
                     radius: 100,
                     borderSide: const BorderSide(width: 3,color: Colors.black),
                     color: Colors.greenAccent,
                     title: 'Earnings',
                     titlePositionPercentageOffset: 0.4,
                     titleStyle: TextStyle(
                       color: Colors.black87,
                       fontSize: 20.px,
                       fontWeight: FontWeight.w800
                     )
                   ),
                   PieChartSectionData(
                       value: 3,
                       radius: 95,
                       borderSide: const BorderSide(width: 3,color: Colors.black),
                       color: Colors.redAccent,
                       titlePositionPercentageOffset: 0.4,
                       title: 'Spendings',
                       titleStyle: TextStyle(
                           color: Colors.black87,
                           fontSize: 20.px,
                           fontWeight: FontWeight.w800
                       )
                   ),
                 ],
                 centerSpaceColor: Colors.cyanAccent.shade100,
                 sectionsSpace: 10,
               ),
             ).animate().slideY(curve: Curves.easeInOut,begin:1.5,end: 0,duration: 800.ms),
           ),
            SizedBox(height: 3.h,),
            SizedBox(
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
            ),
          ],
        ).animate().flip(duration: 1000.ms,curve: Curves.easeInOut),
      ),
    );
  }
}
