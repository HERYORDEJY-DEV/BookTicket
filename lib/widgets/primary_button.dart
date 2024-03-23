import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onPress;
  final String title;
  final Widget? leftElement;
  final Widget? rightElement;

  const PrimaryButton(
      {super.key,
      required this.onPress,
      required this.title,
      this.leftElement,
      this.rightElement});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPress?.call();
        },
        style: ElevatedButton.styleFrom(
            maximumSize: const Size(double.infinity, 50),
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: AppStyles.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(AppStyles.mediumBorderRadius)),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leftElement ?? const SizedBox(),
            Text(
              title,
              style: AppStyles.headlineText4
                  .copyWith(color: Colors.white, fontSize: 16.sp),
            ),
            rightElement ?? const SizedBox()
          ],
        ));
  }
}
