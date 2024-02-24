import 'package:bookticket/styles/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            Gap(AppStyles.largeSpacer),

            // Welcome greeting
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.screenHorzPadding),
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
                      Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/logo.png'))),
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppStyles.mediumSpacer),

            // Search bar
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding),
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: AppStyles.inputBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular),
                    Gap(AppStyles.smallSpacer),
                    Text(
                      "Search here...",
                      style: AppStyles.headlineText4,
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppStyles.mediumSpacer),

            //   Upcoming Flights
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding),
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
            )
          ],
        ));
  }
}
