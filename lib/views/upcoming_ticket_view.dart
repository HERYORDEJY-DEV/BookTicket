import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/OutlinedContainer.dart';

class UpcomingTicketView extends StatelessWidget {
  const UpcomingTicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: 0.85.sw,
      // height: 200,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(AppStyles.mediumBorderRadius)),
          color: AppStyles.orangeColor,
        ),
        child: Column(
          children: [
            /*
             The top part of the card
             */
            Container(
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppStyles.mediumPadding.w,
                  vertical: AppStyles.mediumPadding.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      OutlinedContainer(),
                      Expanded(
                        child: Stack(alignment: Alignment.center, children: [
                          SizedBox(
                            height: 24.h,
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                          ),
                                        )),
                              );
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      OutlinedContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Gap(3.h),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: const Text(
                            "New -York",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "8H 30M",
                          textAlign: TextAlign.center,
                          style: AppStyles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100.w,
                          child: const Text(
                            "London",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ])
                ],
              ),
            ),

            /*
           The center part of the card
           */
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                    height: 20.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10).r,
                            bottomRight: Radius.circular(10).r,
                          )),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 20.h,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 10).floor(),
                              (index) => SizedBox(
                                  width: 5.w,
                                  height: 1.h,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                    color: Colors.white,
                                  )))),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                    height: 20.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10).r,
                            bottomLeft: Radius.circular(10).r,
                          )),
                    ),
                  )
                ],
              ),
            ),

            /*
             The bottom part of the card
             */
            Container(
              padding: EdgeInsets.only(
                  left: 16.w, top: 10.h, bottom: 16.h, right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        "23:30",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Departure time",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        "419",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Number",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
