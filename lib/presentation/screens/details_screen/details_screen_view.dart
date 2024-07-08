import 'package:flutter/material.dart';
import 'package:repository_design/models/order_type_model.dart';
import 'package:repository_design/presentation/screens/details_screen/details_screen_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenView extends StatefulWidget {
  const DetailsScreenView({super.key});

  @override
  State<DetailsScreenView> createState() => _DetailsScreenViewState();
}

class _DetailsScreenViewState extends State<DetailsScreenView> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: orderList.length, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade400,
        centerTitle: true,
        toolbarHeight: 90,
        title: Text('Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 35.px,
          fontWeight: FontWeight.w800
        ),
        ),
        bottom: TabBar(
          padding: const EdgeInsets.all(5),
          isScrollable: true,
          controller: tabController,
            labelStyle: TextStyle(
              color:Colors.white,
              fontSize: 25.px,
              fontWeight: FontWeight.w700
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20.px
            ),
            indicatorColor: Colors.black,
            dividerColor: Colors.cyan.shade400,
            tabs:List.generate(orderList.length, (index) => Tab(text: orderList[index],),)
        ),
      ),
      backgroundColor: Colors.cyan.shade400,
      body:  DetailsScreenContent(tabController: tabController,),
    );
  }
}
