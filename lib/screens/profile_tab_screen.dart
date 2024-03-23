import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:round_icon/round_icon.dart';

import '../widgets/OutlinedContainer.dart';

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  Widget renderEntry({String? title, String? value, bool isLeft = false}) {
    return Column(
      crossAxisAlignment:
          isLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        value != null
            ? Text(value,
                style: AppStyles.headlineText3
                    .copyWith(fontSize: 14.sp, color: Colors.black87))
            : const SizedBox(),
        title != null
            ? Text(title,
                style: AppStyles.headlineText3
                    .copyWith(color: Colors.grey.shade500, fontSize: 12))
            : const SizedBox(),
      ],
    );
  }

  Widget renderEntryRowContainer(List<Widget> content) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppStyles.smallBorderRadius),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppStyles.mediumPadding,
            vertical: AppStyles.smallPadding),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppStyles.screenHorzPadding.w,
            vertical: AppStyles.screenVertPadding.h),
        children: [
          Gap(AppStyles.largeSpacer),
          /*
          * Heading
          * */
          SizedBox(
            height: 80.r,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 80.r,
                    width: 80.r,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/logo.png')),
                    ),
                  ),
                  Gap(AppStyles.smallSpacer.w),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Book Ticket",
                              style: AppStyles.headlineText2,
                            ),
                            Text("New-York",
                                style: AppStyles.headlineText3
                                    .copyWith(fontSize: 14)),
                          ],
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  AppStyles.xlargeBorderRadius))),
                          child: Padding(
                            padding: EdgeInsets.all(1.5.r),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RoundIcon(
                                  icon: Icons.shield,
                                  backgroundColor: AppStyles.primaryColor,
                                  iconColor: Colors.white,
                                  size: 18.r,
                                  padding: 7.r,
                                ),
                                Gap(AppStyles.smallSpacer.w),
                                Text("Premium status",
                                    style: AppStyles.headlineText3.copyWith(
                                        fontSize: 14,
                                        color: AppStyles.primaryColor)),
                                Gap(AppStyles.smallSpacer.w),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("Edit",
                        style: AppStyles.headlineText3.copyWith(
                            fontSize: 14, color: AppStyles.primaryColor)),
                  )
                ]),
          ),

          /*
          * Award Card
          * */
          Column(
            children: [
              Gap(AppStyles.largeSpacer.h),
              DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppStyles.largeBorderRadius)),
                    color: AppStyles.primaryColor),
                child: Stack(children: [
                  Positioned(
                      height: 100.r,
                      width: 100.r,
                      top: -45,
                      right: -45,
                      child: OutlinedContainer(
                        strokeColor: Colors.indigoAccent,
                        borderWidth: 20,
                        containerPadding: 30,
                        borderRadius: 1000.r,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppStyles.largePadding.r,
                        vertical: AppStyles.mediumPadding.h),
                    child: Row(children: [
                      RoundIcon(
                        icon: Icons.lightbulb,
                        backgroundColor: Colors.white,
                        iconColor: AppStyles.primaryColor,
                        size: 50.r,
                        padding: 20.r,
                      ),
                      Gap(AppStyles.mediumSpacer.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've got a new award!",
                            style: AppStyles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "You have 150 flights in a year",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ]),
                  ),
                ]),
              )
            ],
          ),

          /*
          * Accumulated Miles
          * */
          Column(
            children: [
              Gap(AppStyles.largeSpacer.h),
              Divider(),
              Text(
                "Accumulated miles:",
                style: AppStyles.headlineText3
                    .copyWith(color: AppStyles.textColor),
              ),
              Text(
                123456.toString(),
                style: AppStyles.headlineText1.copyWith(fontSize: 32),
              ),
              const Divider(),
            ],
          ),

          /*
          * Details
          * */
          Column(children: [
            Gap(AppStyles.largeSpacer.h),
            renderEntryRowContainer([
              renderEntry(
                title: "Last miles accrued",
              ),
              renderEntry(
                  title: DateFormat.yMMMd().format(DateTime(2024, 2, 1)),
                  isLeft: true),
            ]),
            Gap(AppStyles.smallSpacer.h),
            renderEntryRowContainer([
              renderEntry(title: "Miles", value: "34 432"),
              renderEntry(
                  title: "Received from", value: "Airline CO.", isLeft: true),
            ]),
            Gap(AppStyles.smallSpacer.h),
            renderEntryRowContainer([
              renderEntry(title: "Miles", value: "2 322"),
              renderEntry(
                  title: "Received from",
                  value: "Delta Airlines.",
                  isLeft: true),
            ]),
            Gap(AppStyles.smallSpacer.h),
            renderEntryRowContainer([
              renderEntry(title: "Miles", value: "12 432"),
              renderEntry(
                  title: "Received from",
                  value: "Qatar Airways.",
                  isLeft: true),
            ]),
            Gap(AppStyles.largeSpacer.h),
            InkWell(
              child: Text(
                "How to get more miles",
                style: AppStyles.headlineText4.copyWith(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w600),
              ),
            )
          ])
        ],
      ),
    );
  }
}
