import 'package:flutter/material.dart';
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
        toolbarHeight: 100,
        backgroundColor: Colors.cyan.shade400,
        centerTitle: true,
        title: Text('Activities',
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
