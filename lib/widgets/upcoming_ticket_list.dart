import 'package:bookticket/widgets/upcoming_ticket_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingTicketList extends StatefulWidget {
  const UpcomingTicketList({super.key});

  @override
  State<UpcomingTicketList> createState() => _UpcomingTicketListState();
}

class _UpcomingTicketListState extends State<UpcomingTicketList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        // physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) =>
            const UpcomingTicketItem(),
        separatorBuilder: (BuildContext context, index) => Divider(
              height: 32.h,
              color: Colors.transparent,
            ),
        itemCount: 20);
  }
}
