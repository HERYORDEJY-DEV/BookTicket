import 'package:bookticket/widgets/upcoming_ticket_item.dart';
import 'package:flutter/cupertino.dart';

class UpcomingTicketList extends StatefulWidget {
  const UpcomingTicketList({super.key});

  @override
  State<UpcomingTicketList> createState() => _UpcomingTicketListState();
}

class _UpcomingTicketListState extends State<UpcomingTicketList> {
  @override
  Widget build(BuildContext context) {
    return UpcomingTicketItem();
  }
}
