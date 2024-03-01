import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/views/upcoming_ticket_view.dart';
import 'package:bookticket/widgets/hotels_list_item.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/hotel_preview_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(children: [
          Gap(AppLayout.getResponsiveHeight(AppStyles.largeSpacer)),

          // Welcome greeting
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getResponsiveWidth(
                        AppStyles.screenHorzPadding)),
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
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getResponsiveWidth(AppStyles.mediumSpacer)),

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
                  Gap(AppLayout.getResponsiveWidth(10)),
                  Text(
                    "Search here...",
                    style: AppStyles.headlineText4,
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getResponsiveHeight(AppStyles.mediumSpacer)),

          //   Upcoming Flights
          // Upcoming Flights - header
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
          ),
          Gap(AppLayout.getResponsiveHeight(AppStyles.mediumSpacer - 15)),

          // Upcoming Flights - tickets
          SingleChildScrollView(
            padding: EdgeInsets.only(right: AppLayout.getResponsiveWidth(20)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Flex(direction: Axis.horizontal, children: [
                  Container(width: AppLayout.getResponsiveWidth(20)),
                  UpcomingTicketView(),
                ]),
              ),
            ),
          ),
          Gap(AppLayout.getResponsiveHeight(50)),

          //   Hotels
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppStyles.screenHorzPadding),
            child: Row(
              children: [
                Text(
                  "Hotels",
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
          Gap(AppLayout.getResponsiveHeight(AppStyles.mediumSpacer)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(right: AppStyles.screenHorzPadding),
              child: Row(
                  children: hotelsDatas
                      .map((hotel) => Padding(
                            padding: EdgeInsets.only(
                                left: AppStyles.screenHorzPadding),
                            child: HotelsListItem(hotel: hotel),
                          ))
                      .toList()),
            ),
          ),

          Gap(AppStyles.largePadding),
        ]));
  }
}
