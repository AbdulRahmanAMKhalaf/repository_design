import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/models/order_type_model.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/analysis_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/drop_down_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/item_details_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/pie_chart_widget.dart';
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
            padding:EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropDownWidget(),
                  Spacer(),
                  AnalysisWidget(),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.px),
                    color: Colors.white12,
                  ),
                  width: double.infinity,
                  child: ListView.separated(
                    padding: EdgeInsets.all(2.px),
                      itemBuilder: (context, index) => const ItemDetailsWidget(),
                      separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                      itemCount: 9),
                ),
              ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
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
                        padding: EdgeInsets.all(2.px),
                        itemBuilder: (context, index) => const ItemDetailsWidget(),
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ).animate().flip(duration: 1000.ms,curve: Curves.easeInOut),
                SizedBox(height: 1.h,),
                GestureDetector(
                  onTap: () {
                    showAdaptiveDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return const PieChartWidget();
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
                        padding: EdgeInsets.all(2.px),
                        itemBuilder: (context, index) => const ItemDetailsWidget(),
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
                        return const PieChartWidget();
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
                        padding: EdgeInsets.all(2.px),
                        itemBuilder: (context, index) => const ItemDetailsWidget(),
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
                        return const PieChartWidget();
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
                        padding: EdgeInsets.all(2.px),
                        itemBuilder: (context, index) => const ItemDetailsWidget(),
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
                        return const PieChartWidget();
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
    );
  }
}
