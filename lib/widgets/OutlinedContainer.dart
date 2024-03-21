import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedContainer extends StatelessWidget {
  final Color strokeColor;
  final Color fillColor;

  const OutlinedContainer(
      {super.key,
      this.fillColor = Colors.transparent,
      this.strokeColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3).w,
      decoration: BoxDecoration(
          color: fillColor,
          borderRadius:
              BorderRadius.all(Radius.circular(AppStyles.largeBorderRadius).w),
          border: Border.all(
            width: 2.5.w,
            color: strokeColor,
          )),
    );
  }
}
