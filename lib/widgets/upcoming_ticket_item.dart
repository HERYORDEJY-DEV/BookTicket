import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/widgets/OutlinedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'custom_barcode_generator.dart';
import 'custom_section_line.dart';

class UpcomingTicketItem extends StatelessWidget {
  const UpcomingTicketItem({super.key});

  Widget renderTitleText(String text) {
    return Text(text,
        style: AppStyles.headlineText3
            .copyWith(fontSize: 14.sp, color: Colors.black87));
  }

  Widget renderPaymentCardInfo(String text) {
    return Row(
      children: [
        Image.asset(
          "assets/images/visa_logo.png",
          width: 50.w,
          height: 30.h,
        ),
        Gap(AppStyles.smallSpacer.w),
        Text(text,
            style: AppStyles.headlineText3
                .copyWith(fontSize: 14.sp, color: Colors.black87)),
      ],
    );
  }

  Widget renderValueText(String text) {
    return Text(text,
        style: AppStyles.headlineText3
            .copyWith(color: Colors.grey.shade500, fontSize: 12));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppStyles.largeBorderRadius.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppStyles.screenHorzPadding.r,
              vertical: (AppStyles.screenHorzPadding * 2).r),
          child: Column(
            children: [
              // FLight info
              Row(
                children: [
                  Text(
                    "NYC",
                    style: AppStyles.headlineText3
                        .copyWith(fontSize: 14.sp, color: Colors.black87),
                  ),
                  Expanded(child: SizedBox()),
                  OutlinedContainer(
                    strokeColor: AppStyles.primaryColor,
                  ),
                  Expanded(
                    child: Stack(alignment: Alignment.center, children: [
                      SizedBox(
                        height: 2.h,
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          int noOfDarts =
                              (constraints.constrainWidth() / 12).floor();
                          return Flex(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate(noOfDarts, (index) {
                              return SizedBox(
                                width: 6.w,
                                height: 3.h,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: AppStyles.primaryColor)),
                              );
                            }),
                          );
                        }),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: AppStyles.primaryColor,
                          ),
                        ),
                      )
                    ]),
                  ),
                  OutlinedContainer(strokeColor: AppStyles.primaryColor),
                  Expanded(child: SizedBox()),
                  Text("LDN",
                      style: AppStyles.headlineText3
                          .copyWith(fontSize: 14.sp, color: Colors.black87))
                ],
              ),
              Gap(AppStyles.smallSpacer.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    // width: 100.w,
                    child: Text("New-York",
                        style: AppStyles.headlineText3.copyWith(
                            color: Colors.grey.shade500, fontSize: 12)),
                  ),
                  Expanded(child: Container()),
                  Center(
                    child: Text("8H 30M",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.black87, fontSize: 14)),
                  ),
                  Expanded(child: Container()),
                  SizedBox(
                    // width: 100.w,
                    child: Text(
                      "London",
                      style: AppStyles.headlineText3
                          .copyWith(color: Colors.grey.shade500, fontSize: 12),
                    ),
                  )
                ],
              ),

              Gap(AppStyles.mediumSpacer.h),

              CustomSectionLine(
                fillRate: 1,
                dashHeight: 0.5,
              ),

              Gap(AppStyles.mediumSpacer.h),

              //   Date and time info
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      renderTitleText("1 May"),
                      renderValueText("Date")
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      renderTitleText("08:00 AM"),
                      renderValueText("Departure time")
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      renderTitleText("23"),
                      renderValueText("Number")
                    ],
                  ),
                ],
              ),

              Gap(AppStyles.mediumSpacer.h),

              CustomSectionLine(
                fillRate: 1,
                dashHeight: 0.5,
              ),

              Gap(AppStyles.mediumSpacer.h),

              //   Passenger info
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      renderTitleText("Oyebode Yusuf"),
                      renderValueText("Passenger")
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      renderTitleText("123 456"),
                      renderValueText("Passport")
                    ],
                  ),
                ],
              ),

              Gap(AppStyles.mediumSpacer.h),

              CustomSectionLine(
                fillRate: 1,
                dashHeight: 0.5,
              ),

              Gap(AppStyles.mediumSpacer.h),

              //   Ticket and booking info
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      renderTitleText("098 765 432"),
                      renderValueText("Number of E-ticket")
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      renderTitleText("A321B890"),
                      renderValueText("Booking code")
                    ],
                  ),
                ],
              ),

              Gap(AppStyles.mediumSpacer.h),

              CustomSectionLine(
                fillRate: 1,
                dashHeight: 0.5,
              ),

              Gap(AppStyles.mediumSpacer.h),

              //   Price and payment info
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      renderPaymentCardInfo("**** 7890"),
                      renderValueText("Payment method")
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      renderTitleText("\$234.56"),
                      renderValueText("Price")
                    ],
                  ),
                ],
              ),

              Gap(AppStyles.largeSpacer.h),

              CustomSectionLine(
                fillRate: 1,
                dashHeight: 0.5,
              ),

              Gap(AppStyles.largeSpacer.h),

              CustomBarcodeGenerator()
            ],
          ),
        ),
      ),
    );
  }
}
