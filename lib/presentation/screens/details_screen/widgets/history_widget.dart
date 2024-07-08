import 'package:flutter/material.dart';
import 'package:repository_design/presentation/screens/details_screen/widgets/child_history_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TextButton(onPressed: () {
        showDialog(context: context,
          builder: (context) => Center(
            child: Container(
              margin: EdgeInsets.all(6.w),
              height: 65.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.px),
                child: Scaffold(
                  backgroundColor:Colors.grey.shade300,
                  body: const Center(
                    child: ChildHistoryWidget(),
                  ),
                ),
              ),
            ),
          ),);
      }, child: Text('History',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12.px,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            decoration: TextDecoration.underline
        ),
      ),
      ),

      /*
                Text('Esimated Time: 5 Min',
                  style: TextStyle(
                    fontSize: 18.px,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade600,
                    decoration: TextDecoration.underline
                  ),
                ).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: 1000.ms,delay: 800.ms),
*/
    );
  }
}
