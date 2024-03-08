import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/views/upcoming_ticket_view.dart';
import 'package:bookticket/widgets/hotels_list_item.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../models/hotel_preview_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(children: [
          Gap(AppStyles.largeSpacer.h),

          // Welcome greeting
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                        horizontal: AppStyles.screenHorzPadding)
                    .w,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headlineText3,
                        ),
                        Text(
                          "Book Ticket",
                          style: AppStyles.headlineText1,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppStyles.mediumSpacer.h),

          // Search bar
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding).w,
            child: Container(
              height: 50.h,
              padding: const EdgeInsets.symmetric(horizontal: 12).w,
              decoration: BoxDecoration(
                color: AppStyles.inputBgColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(FluentSystemIcons.ic_fluent_search_regular),
                  Gap(10.w),
                  Text(
                    "Search here...",
                    style: AppStyles.headlineText4,
                  ),
                ],
              ),
            ),
          ),
          Gap(AppStyles.largeSpacer.h),

          //   Upcoming Flights
          // Upcoming Flights - header
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding).w,
            child: Row(
              children: [
                Text(
                  "Upcoming Flights",
                  style: AppStyles.headlineText2,
                ),
                Spacer(),
                InkWell(
                  onTap: () => {print("View allUpcoming Flights")},
                  child: Text(
                    "View all",
                    style: AppStyles.primaryTextStyle
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppStyles.mediumSpacer.h),

          // Upcoming Flights - tickets
          SingleChildScrollView(
            padding: EdgeInsets.only(right: AppStyles.screenHorzPadding.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Flex(direction: Axis.horizontal, children: [
                  Container(width: 20.w),
                  UpcomingTicketView(),
                ]),
              ),
            ),
          ),
          Gap(AppStyles.largeSpacer.h),

          //   Hotels
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: AppStyles.headlineText2,
                ),
                InkWell(
                  onTap: () => {print("View allUpcoming Flights")},
                  child: Text(
                    "View all",
                    style: AppStyles.primaryTextStyle
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppStyles.mediumSpacer.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(right: AppStyles.screenHorzPadding).w,
              child: Row(
                  children: hotelsDatas
                      .map((hotel) => Padding(
                            padding: EdgeInsets.only(
                                    left: AppStyles.screenHorzPadding)
                                .w,
                            child: HotelsListItem(hotel: hotel),
                          ))
                      .toList()),
            ),
          ),

          Gap(AppStyles.largePadding),
        ]));
  }
}
