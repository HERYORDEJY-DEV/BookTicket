import 'package:bookticket/screens/home_screen.dart';
import 'package:bookticket/screens/profile_tab_screen.dart';
import 'package:bookticket/screens/search_screen.dart';
import 'package:bookticket/screens/ticket_tab_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.currentScreenIndex});

  final int currentScreenIndex;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentScreenIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketTabScreen(),
    ProfileTabScreen(),
  ];

  void onTapItem(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: _widgetOptions[_currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentScreenIndex,
          onTap: (value) => onTapItem(value),
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFFCCCCCC),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile"),
          ]),
    );
  }
}
