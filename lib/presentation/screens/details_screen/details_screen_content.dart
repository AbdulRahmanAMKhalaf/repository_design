import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/analysis_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/awaiting_to_arrival_item_details_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/drop_down_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/exchange_Item_details_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/return_item_details_widget.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/under_constraction_item_details_widget.dart';
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
                      itemBuilder: (context, index) => const UnderConstractionItemDetailsWidget(),
                      separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                      itemCount: 9),
                ),
              ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
            ],
                    ),
          ),
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
                        itemBuilder: (context, index) => const UnderConstractionItemDetailsWidget(),
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
              ],
            ),
          ),
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
                        itemBuilder: (context, index) => const AwaitingToArrivalItemDetailsWidget(),
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
              ],
            ),
          ),
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
                        itemBuilder: (context, index) => const ExchangeItemDetailsWidget(),
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
              ],
            ),
          ),
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
                        itemBuilder: (context, index) => const ReturnItemDetailsWidget(),
                        separatorBuilder: (context, index) => SizedBox(height: 1.h,),
                        itemCount: 9),
                  ),
                ).animate().flip(duration: 1200.ms,curve: Curves.easeInOut),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
