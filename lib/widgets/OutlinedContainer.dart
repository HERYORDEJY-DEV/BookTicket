import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedContainer extends StatelessWidget {
  final Color strokeColor;
  final Color fillColor;
  final double borderWidth;
  final double containerPadding;
  final double borderRadius;

  const OutlinedContainer(
      {super.key,
      this.fillColor = Colors.transparent,
      this.strokeColor = Colors.white,
      this.borderWidth = 2.5,
      this.containerPadding = 3,
      this.borderRadius = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(containerPadding).w,
      decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
          border: Border.all(
            width: borderWidth.w,
            color: strokeColor,
          )),
    );
  }
}
