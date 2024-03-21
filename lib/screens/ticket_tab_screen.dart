import 'package:bookticket/widgets/custom_tab_view.dart';
import 'package:bookticket/widgets/upcoming_ticket_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/custom_tab_view_model.dart';
import '../styles/app_styles.dart';

class TicketTabScreen extends StatelessWidget {
  const TicketTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
            horizontal: AppStyles.screenHorzPadding.r,
            vertical: AppStyles.screenVertPadding.h),
        children: [
          Text(
            "Tickets",
            style: AppStyles.headlineText1,
          ),
          CustomTabView(views: [
            CustomTabViewModel(title: "Upcoming", view: UpcomingTicketList()),
            CustomTabViewModel(title: "Previous", view: Text("Home o")),
          ])
        ],
      ),
    );
  }
}
