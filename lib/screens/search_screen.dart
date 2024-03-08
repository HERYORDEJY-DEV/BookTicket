import 'package:bookticket/styles/app_styles.dart';
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
          Gap(AppStyles.largeSpacer),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0),
            // clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              // borderRadius: BorderRadius.circular(50.r),
            ),
            // height: 35.h,
            child: Flex(
              direction: Axis.horizontal,
              children: searchCategory.mapIndexed((index, category) {
                bool isAirlineTickets = index == 0;
                bool isSelected = currentSearchCategory == category['slug'];
                return Expanded(
                    child: TextButton(
                        onPressed: () {
                          switchSearchCategory(category['slug'] as String);
                        },
                        child: Text(
                          category['title']!,
                          style:
                              AppStyles.primaryTextStyle.copyWith(fontSize: 12),
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: AppStyles.textColor,
                          backgroundColor:
                              isSelected ? Colors.white : Colors.transparent,
                          shape: RoundedRectangleBorder(),
                        )));
              }).toList(),
            ),
          ),
          Gap(AppStyles.largeSpacer),
          TextButton(
            onPressed: () {
              print('I got clicked');
            },
            style: TextButton.styleFrom(
                foregroundColor: AppStyles.textColor,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppStyles.smallBorderRadius.r)))),
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
                        Radius.circular(AppStyles.smallBorderRadius.r)))),
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
          Gap(AppStyles.largeSpacer),
          PrimaryButton(onPress: () {}, title: "Find tickets"),
          Gap(AppStyles.largeSpacer),
          PreviewListHeader(
            title: "Upcoming Flights",
            onViewAll: () {},
          ),
          Gap(AppStyles.mediumSpacer),
        ],
      ),
    );
  }
}
