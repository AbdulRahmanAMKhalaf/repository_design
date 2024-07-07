import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/models/order_type_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenContent extends StatelessWidget {
  const DetailsScreenContent({super.key,required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.px)),
      ),
      child: TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding:EdgeInsets.all(3.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15.px),),
                dropdownColor: Colors.grey.shade200,
                padding: EdgeInsets.all(5.px),
                menuMaxHeight: 100,
                hint: Text('Select Day,Week,...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.px,
                  fontWeight: FontWeight.w800
                ),
                ),
                items:dropDownMenuList,
                onChanged: (Object? value) {  },),
              SizedBox(height: 1.h,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.px),
                    color: Colors.cyanAccent.shade400,
                  ),
                  width: double.infinity,
                  child: ListView.separated(
                    padding: EdgeInsets.all(8.px),
                      itemBuilder: (context, index) => Column(
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
                      separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                      itemCount: 9),
                ),
              ),
              SizedBox(height: 1.h,),
              GestureDetector(
                onTap: () {
                  showAdaptiveDialog(
                    barrierDismissible: true,
                      context: context,
                      builder: (context) {
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
                            ).animate().slideY(begin: -1,end: 0,duration: 600.ms).fadeIn(duration: 1000.ms,),
                          ),
                        );
                      },);
                },
                child: Container(
                  width: double.infinity,
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.px)
                  ),
                  child: Center(
                    child: Text('Press for more info.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.cyanAccent.shade400,
                      fontSize: 27.px,
                      fontWeight: FontWeight.w600,
                    ),
                    ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color:Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                  ),
                ),
              ),
            ],
                    ),
          ),
          Padding(
            padding:EdgeInsets.all(3.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  borderRadius: BorderRadius.all(Radius.circular(15.px),),
                  dropdownColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(5.px),
                  menuMaxHeight: 100,
                  hint: Text('Select Day,Week,...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  items:dropDownMenuList,
                  onChanged: (Object? value) {  },),
                SizedBox(height: 1.h,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.px),
                      color: Colors.cyanAccent.shade400,
                    ),
                    width: double.infinity,
                    child: ListView.separated(
                        padding: EdgeInsets.all(8.px),
                        itemBuilder: (context, index) => Column(
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
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ),
                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {
                    showAdaptiveDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
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
                            ).animate().slideY(begin: -1,end: 0,duration: 600.ms).fadeIn(duration: 1000.ms,),
                          ),
                        );
                      },);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 8.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Center(
                      child: Text('Press for more info.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.cyanAccent.shade400,
                          fontSize: 27.px,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color:Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.all(3.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  borderRadius: BorderRadius.all(Radius.circular(15.px),),
                  dropdownColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(5.px),
                  menuMaxHeight: 100,
                  hint: Text('Select Day,Week,...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  items:dropDownMenuList,
                  onChanged: (Object? value) {  },),
                SizedBox(height: 1.h,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.px),
                      color: Colors.cyanAccent.shade400,
                    ),
                    width: double.infinity,
                    child: ListView.separated(
                        padding: EdgeInsets.all(8.px),
                        itemBuilder: (context, index) => Column(
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
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ),
                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {
                    showAdaptiveDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
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
                            ).animate().slideY(begin: -1,end: 0,duration: 600.ms).fadeIn(duration: 1000.ms,),
                          ),
                        );
                      },);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 8.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Center(
                      child: Text('Press for more info.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.cyanAccent.shade400,
                          fontSize: 27.px,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color:Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.all(3.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  borderRadius: BorderRadius.all(Radius.circular(15.px),),
                  dropdownColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(5.px),
                  menuMaxHeight: 100,
                  hint: Text('Select Day,Week,...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  items:dropDownMenuList,
                  onChanged: (Object? value) {  },),
                SizedBox(height: 1.h,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.px),
                      color: Colors.cyanAccent.shade400,
                    ),
                    width: double.infinity,
                    child: ListView.separated(
                        padding: EdgeInsets.all(8.px),
                        itemBuilder: (context, index) => Column(
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
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ),
                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {
                    showAdaptiveDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
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
                            ).animate().slideY(begin: -1,end: 0,duration: 600.ms).fadeIn(duration: 1000.ms,),
                          ),
                        );
                      },);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 8.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Center(
                      child: Text('Press for more info.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.cyanAccent.shade400,
                          fontSize: 27.px,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color:Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.all(3.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  borderRadius: BorderRadius.all(Radius.circular(15.px),),
                  dropdownColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(5.px),
                  menuMaxHeight: 100,
                  hint: Text('Select Day,Week,...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  items:dropDownMenuList,
                  onChanged: (Object? value) {  },),
                SizedBox(height: 1.h,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.px),
                      color: Colors.cyanAccent.shade400,
                    ),
                    width: double.infinity,
                    child: ListView.separated(
                        padding: EdgeInsets.all(8.px),
                        itemBuilder: (context, index) => Column(
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
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ),
                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {
                    showAdaptiveDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
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
                            ).animate().slideY(begin: -1,end: 0,duration: 600.ms).fadeIn(duration: 1000.ms,),
                          ),
                        );
                      },);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 8.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Center(
                      child: Text('Press for more info.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.cyanAccent.shade400,
                          fontSize: 27.px,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(color:Colors.white,duration: 1000.ms,curve: Curves.easeInOut),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().flipH(duration: 800.ms,begin: 1,end: 0,curve: Curves.easeInOut);
  }
}
