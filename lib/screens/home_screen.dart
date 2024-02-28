import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/views/upcoming_ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/hotel_preview_model.dart';
import '../widgets/hotels_list_item.dart';

final List<HotelPreviewModel> hotelsDatas = [
  HotelPreviewModel(
      id: '1',
      image:
          "https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Hilton",
      location: "London",
      price: 929),
  HotelPreviewModel(
      id: '2',
      image:
          "https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Marble",
      location: "New York",
      price: 737),
  HotelPreviewModel(
      id: '3',
      image:
          "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Traffors",
      location: "Manchester",
      price: 363),
  HotelPreviewModel(
      id: '4',
      image:
          "https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Kyoto",
      location: "Tokyo",
      price: 300)
].toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesTitles = ['Inception', 'Heat', 'Spider Man'];
    final List<Map<String, dynamic>> hotelsData = List.generate(
        5,
        (i) => {
              "id": 1,
              "image":
                  "https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "title": "Hilton",
              "location": "London",
              "price": 200
            });

    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(children: [
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
          Gap(AppStyles.mediumSpacer - 15),

          // Upcoming Flights - tickets
          SingleChildScrollView(
            padding: EdgeInsets.only(right: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Flex(direction: Axis.horizontal, children: [
                  Container(width: 20),
                  UpcomingTicketView(),
                ]),
              ),
            ),
          ),
          Gap(AppStyles.mediumSpacer),

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
          Gap(AppStyles.mediumSpacer - 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  for (var hotel in hotelsDatas)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: HotelsListItem(
                        item: hotel,
                      ),
                    ),
                ],
              ),
            ),
          ),

          Gap(AppStyles.largePadding),
        ]));
  }
}
