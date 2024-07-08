import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/models/order_type_model.dart';
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
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          showDialog(context: context,
                              builder: (context) => Center(
                                child: Container(
                                  height: 60.h,
                                  margin: EdgeInsets.all(3.w),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.px,),
                                    color: Colors.white
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.all(2.0.w),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:Alignment.bottomCenter,
                                          child: Container(
                                            height: 52.h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black,
                                              width: 1.w
                                              ),
                                              color: Colors.cyanAccent.shade400,
                                              borderRadius: BorderRadius.all( Radius.circular(15.px),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                minRadius: 50.px,
                                                maxRadius: 60.px,
                                                backgroundColor: Colors.black,

                                              ),
                                              SizedBox(height: 1.h,),
                                              Text('#Order: 3',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.px,
                                                    decoration: TextDecoration.underline,
                                                    fontWeight: FontWeight.w800
                                                ),
                                              ),
                                              SizedBox(height: 1.h,),
                                              Text('Carlos Darras Carlos Darras Carlos Darras Carlos Darras Carlos Darras Carlos Darras',
                                              textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow: TextOverflow.fade,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 20.px,
                                                ),
                                              ),
                                              SizedBox(height: 2.h,),
                                             RichText(
                                               overflow: TextOverflow.ellipsis,
                                                 maxLines: 5,
                                                 text: TextSpan(
                                                   children: [
                                                     TextSpan(
                                                       text: 'Description: ',
                                                       style: TextStyle(
                                                         fontSize: 19.px,
                                                         fontWeight: FontWeight.w800,
                                                         color: Colors.grey.shade800,
                                                       )
                                                     ),
                                                     TextSpan(
                                                       text: 'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                                                       style: TextStyle(color: Colors.grey.shade700,
                                                       fontWeight: FontWeight.w700,
                                                       fontSize: 17.px)
                                                     ),
                                                   ],
                                                 ),),
                                              SizedBox(height: 3.h,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text('Estimated Time: 12.00A.M',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 13.px,
                                                  ),
                                                  ),
                                                  Text('To: Carlos Darras',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w800,
                                                      fontSize: 16.px,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 4.h,),
                                              Text('Profit Percentag: 30%',
                                              style:TextStyle(
                                                fontSize: 25.px,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.grey.shade500
                                              ) ,
                                              ).animate(onPlay: (controller) => controller.repeat(),).shimmer(color: Colors.white,duration: 1200.ms,delay: 500.ms),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            barrierDismissible: true
                          );
                        },
                          child: const ItemDetailsWidget()),
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
    ).animate().flipH(duration: 800.ms,begin: 1,end: 0,curve: Curves.easeInOut);
  }
}
