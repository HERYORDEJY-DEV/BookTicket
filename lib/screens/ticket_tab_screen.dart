import 'package:bookticket/widgets/custom_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../models/custom_tab_view_model.dart';
import '../styles/app_styles.dart';
import '../widgets/upcoming_ticket_list.dart';

class TicketTabScreen extends StatelessWidget {
  const TicketTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppStyles.screenHorzPadding.w,
                  vertical: AppStyles.screenVertPadding.h),
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tickets",
                    style: AppStyles.headlineText1,
                  ),
                  Gap(AppStyles.largeSpacer.h),
                  const CustomTabView(views: [
                    CustomTabViewModel(
                        title: "Upcoming", view: UpcomingTicketList()),
                    CustomTabViewModel(title: "Previous", view: Text("Home o")),
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
