import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBarcodeGenerator extends StatelessWidget {
  const CustomBarcodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:
              BorderRadius.all(Radius.circular(AppStyles.largeBorderRadius.r))),
      child: BarcodeWidget(
        barcode: Barcode.code128(),
        // Barcode type and settings
        data: 'https://pub.dev/packages/barcode_widget',
        // Content
        width: double.infinity,
        height: 80,
        drawText: false,
      ),
    );
  }
}
