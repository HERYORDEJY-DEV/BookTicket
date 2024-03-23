import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/widgets/preview_list_header.dart';
import 'package:bookticket/widgets/primary_button.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

List<Map<String, String>> searchCategory = [
  {"title": 'Airline Tickets', "slug": 'airline-tickets'},
  {"title": 'Hotels', "slug": 'hotels'}
];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String currentSearchCategory = "airline-tickets";

  void switchSearchCategory(String category) {
    setState(() {
      currentSearchCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = AppLayout.getSize(context);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppStyles.screenHorzPadding.w,
            vertical: AppStyles.screenVertPadding.h),
        children: [
          Gap(AppStyles.largeSpacer.h),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headlineText1,
          ),
          Gap(AppStyles.largeSpacer.h),
          SizedBox(
            child: Container(
              padding: EdgeInsets.all(3.5.r),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50.r),
              ),
              height: 35.h,
              child: Flex(
                direction: Axis.horizontal,
                children: searchCategory.mapIndexed((index, category) {
                  bool isAirlineTickets = index == 0;
                  bool isSelected = currentSearchCategory == category['slug'];
                  return Expanded(
                    child: SizedBox(
                      width: double.infinity, // <-- match_parent
                      height: double.infinity, // <-- match-parent
                      child: TextButton(
                        onPressed: () {
                          switchSearchCategory(category['slug'] as String);
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: AppStyles.textColor,
                          backgroundColor:
                              isSelected ? Colors.white : Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: isAirlineTickets
                                  ? Radius.zero
                                  : Radius.circular(
                                      AppStyles.largeBorderRadius),
                              left: isAirlineTickets
                                  ? Radius.circular(AppStyles.largeBorderRadius)
                                  : Radius.zero,
                            ),
                          ),
                        ),
                        child: Text(
                          category['title']!,
                          style:
                              AppStyles.primaryTextStyle.copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Gap(AppStyles.largeSpacer.h),
          TextButton(
            onPressed: () {
              print('I got clicked');
            },
            style: TextButton.styleFrom(
                foregroundColor: AppStyles.textColor,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppStyles.smallBorderRadius)))),
            child: Row(
              children: [
                Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.grey.shade500,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Departure',
                  style: AppStyles.headlineText4
                      .copyWith(color: AppStyles.textColor),
                ),
              ],
            ),
          ),
          Gap(AppStyles.smallSpacer),
          TextButton(
            onPressed: () {
              if (kDebugMode) {
                print('I got clicked');
              }
            },
            style: TextButton.styleFrom(
                foregroundColor: AppStyles.textColor,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppStyles.smallBorderRadius)))),
            child: Row(
              children: [
                Icon(
                  Icons.flight_land_rounded,
                  color: Colors.grey.shade500,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Arrival',
                  style: AppStyles.headlineText4
                      .copyWith(color: AppStyles.textColor),
                ),
              ],
            ),
          ),
          Gap(AppStyles.largeSpacer.h),
          PrimaryButton(onPress: () {}, title: "Find tickets"),
          Gap(AppStyles.largeSpacer.h),
          PreviewListHeader(
            title: "Upcoming Flights",
            onViewAll: () {},
          ),
          Gap(AppStyles.mediumSpacer),
          SizedBox(
            width: screenSize.width,
            height: 310.h,
            child: Row(
              // direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenSize.width / 2 - 26.w,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppStyles.mediumBorderRadius)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(AppStyles.mediumPadding.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Network image
                          Container(
                            height: 150.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(AppStyles.mediumBorderRadius),
                              ),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1540339832862-474599807836?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Gap(AppStyles.smallSpacer.h),
                          Text(
                            "20% discount on the early booking of this flight.\nDon't miss it.",
                            style: AppStyles.headlineText3
                                .copyWith(color: AppStyles.textColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Gap(AppStyles.mediumSpacer.w),
                SizedBox(
                  width: screenSize.width / 2 - 26.w,
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppStyles.mediumBorderRadius)),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.all(AppStyles.mediumPadding.r),
                              child: Column(
                                children: [
                                  Text(
                                    "Discount for survery",
                                    style: AppStyles.headlineText3.copyWith(
                                        color: Colors.white, fontSize: 14.sp),
                                  ),
                                  Gap(AppStyles.smallSpacer.h),
                                  Text(
                                    "Take the survery about our services and get a discount",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -25.r,
                              right: -25.r,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.2),
                                      width: 10.r,
                                    ),
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: Colors.transparent),
                                child: SizedBox(
                                  height: 60.r,
                                  width: 60.r,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Expanded(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.all(
                                Radius.circular(AppStyles.mediumBorderRadius)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: AppStyles.mediumPadding.r,
                                horizontal: AppStyles.smallPadding.r),
                            child: Flex(
                              direction: Axis.vertical,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Take Love",
                                  style: AppStyles.headlineText3.copyWith(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Love and compassion are necessities, not luxuries.\nWithout them, humanity cannot survive.",
                                  style: AppStyles.primaryTextStyle.copyWith(
                                      color: Colors.white, fontSize: 12.sp),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
