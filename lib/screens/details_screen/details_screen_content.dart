import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenContent extends StatelessWidget {
  const DetailsScreenContent({super.key,required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.px)),
      ),
      child: TabBarView(
        controller: tabController,
        children: [
          ListView(
          padding: EdgeInsets.all(8.px),
          children: [
            DropdownButton<String>(
              borderRadius: BorderRadius.all(Radius.circular(15.px),),
              dropdownColor: Colors.yellow.shade400,
              padding: EdgeInsets.all(5.px),
              menuMaxHeight: 100,
              hint: Text('Select Day,Week,...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.px,
                fontWeight: FontWeight.w800
              ),
              ),
              items: [
                DropdownMenuItem(
                  value: '1',
                    child:Text('Day',
                    style: TextStyle(
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.cyan.shade400,

                    ),
                    ),
                ),
                DropdownMenuItem(
                  value: '2',
                  child:Text('Week',
                    style: TextStyle(
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.cyan.shade400,

                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: '3',
                  child:Text('Month',
                    style: TextStyle(
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.cyan.shade400,

                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: '4',
                  child:Text('Year',
                    style: TextStyle(
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.cyan.shade400,

                    ),
                  ),
                ),
              ],
              onChanged: (Object? value) {  },),
            SizedBox(height: 2.h,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.px),
                color: Colors.white,
              ),
              width: double.infinity,
              height: 32.h,
              child: ListView.separated(
                padding: EdgeInsets.all(8.px),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            minRadius: 25.px,
                            maxRadius: 30.px,
                          ),
                          SizedBox(width: 2.w,),
                          Text('Full name',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.px,
                            fontWeight: FontWeight.w800
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
                  separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                  itemCount: 9),
            ),
            SizedBox(height: 10.h,),
            Container(
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
            ).animate().flipV(begin: 1,end: 0,duration: 600.ms),
          ],
        ),
          ListView(
            padding: EdgeInsets.all(8.px),
            children: [
              DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15.px),),
                dropdownColor: Colors.yellow.shade400,
                padding: EdgeInsets.all(5.px),
                menuMaxHeight: 100,
                hint: Text('Select Day,Week,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child:Text('Day',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child:Text('Week',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child:Text('Month',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child:Text('Year',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                ],
                onChanged: (Object? value) {  },),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.px),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 32.h,
                child: ListView.separated(
                    padding: EdgeInsets.all(8.px),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              minRadius: 25.px,
                              maxRadius: 30.px,
                            ),
                            SizedBox(width: 2.w,),
                            Text('Full name',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.px,
                                  fontWeight: FontWeight.w800
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
                    separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                    itemCount: 9),
              ),
              SizedBox(height: 10.h,),
              Container(
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
              ).animate().flipV(begin: 1,end: 0,duration: 600.ms),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(8.px),
            children: [
              DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15.px),),
                dropdownColor: Colors.yellow.shade400,
                padding: EdgeInsets.all(5.px),
                menuMaxHeight: 100,
                hint: Text('Select Day,Week,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child:Text('Day',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child:Text('Week',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child:Text('Month',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child:Text('Year',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                ],
                onChanged: (Object? value) {  },),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.px),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 32.h,
                child: ListView.separated(
                    padding: EdgeInsets.all(8.px),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              minRadius: 25.px,
                              maxRadius: 30.px,
                            ),
                            SizedBox(width: 2.w,),
                            Text('Full name',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.px,
                                  fontWeight: FontWeight.w800
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
                    separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                    itemCount: 9),
              ),
              SizedBox(height: 10.h,),
              Container(
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
              ).animate().flipV(begin: 1,end: 0,duration: 600.ms),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(8.px),
            children: [
              DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15.px),),
                dropdownColor: Colors.yellow.shade400,
                padding: EdgeInsets.all(5.px),
                menuMaxHeight: 100,
                hint: Text('Select Day,Week,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child:Text('Day',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child:Text('Week',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child:Text('Month',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child:Text('Year',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                ],
                onChanged: (Object? value) {  },),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.px),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 32.h,
                child: ListView.separated(
                    padding: EdgeInsets.all(8.px),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              minRadius: 25.px,
                              maxRadius: 30.px,
                            ),
                            SizedBox(width: 2.w,),
                            Text('Full name',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.px,
                                  fontWeight: FontWeight.w800
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
                    separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                    itemCount: 9),
              ),
              SizedBox(height: 10.h,),
              Container(
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
              ).animate().flipV(begin: 1,end: 0,duration: 600.ms),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(8.px),
            children: [
              DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15.px),),
                dropdownColor: Colors.yellow.shade400,
                padding: EdgeInsets.all(5.px),
                menuMaxHeight: 100,
                hint: Text('Select Day,Week,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child:Text('Day',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child:Text('Week',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child:Text('Month',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child:Text('Year',
                      style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.cyan.shade400,

                      ),
                    ),
                  ),
                ],
                onChanged: (Object? value) {  },),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.px),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 32.h,
                child: ListView.separated(
                    padding: EdgeInsets.all(8.px),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              minRadius: 25.px,
                              maxRadius: 30.px,
                            ),
                            SizedBox(width: 2.w,),
                            Text('Full name',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.px,
                                  fontWeight: FontWeight.w800
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
                    separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                    itemCount: 9),
              ),
              SizedBox(height: 10.h,),
              Container(
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
              ).animate().flipV(begin: 1,end: 0,duration: 600.ms),
            ],
          ),
        ],
      ),
    ).animate().flipH(duration: 800.ms,begin: 1,end: 0,curve: Curves.easeInOut);
  }
}
