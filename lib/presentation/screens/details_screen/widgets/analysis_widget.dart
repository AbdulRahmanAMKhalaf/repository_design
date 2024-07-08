import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/pie_chart_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AnalysisWidget extends StatelessWidget {
  const AnalysisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAdaptiveDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) {
            return const PieChartWidget();
          },);
      },
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.px)
        ),
        child: Padding(
          padding:  EdgeInsets.all(3.w),
          child: Center(
            child: Text('Analysis',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.cyanAccent.shade400,
                fontSize: 15.px,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ).animate(onPlay: (controller) => controller.repeat(),).shimmer(delay: 300.ms,duration: 1000.ms,curve: Curves.easeInOut),
    );
  }
}
