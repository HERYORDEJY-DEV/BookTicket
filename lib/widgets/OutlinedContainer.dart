import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedContainer extends StatelessWidget {
  const OutlinedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3).w,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(AppStyles.largeBorderRadius).w),
          border: Border.all(
            width: 2.5.w,
            color: Colors.white,
          )),
    );
  }
}
