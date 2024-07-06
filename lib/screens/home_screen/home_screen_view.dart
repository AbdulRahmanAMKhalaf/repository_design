import 'package:flutter/material.dart';
import 'package:repository_design/models/order_type_model.dart';
import 'package:repository_design/screens/home_screen/home_screen_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10.px),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) =>[
                  PopupMenuItem(
                    child:Text('All',

                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.px
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child:Text('Day',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.px
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child:Text('Month',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.px
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child:Text('Year',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.px
                      ),
                    ),
                  ),
                ] ,

                shape:OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.cyanAccent.shade400,width: 3),
                    borderRadius: BorderRadius.circular(15.px)),
                child: const Icon(Icons.filter_list_sharp,color: Colors.white,),

              ),
            ),
                    ),
          ),
        ],
        backgroundColor: Colors.cyan.shade400,
        centerTitle: true,
        title: Text('Statistics',
        style: TextStyle(
          fontSize: 35.px,
          fontWeight: FontWeight.w800,
          color: Colors.black87,
        ),
        ),
      ),
      backgroundColor: Colors.cyan.shade400,
      body: const HomeScreenContent(),
    );
  }
}
