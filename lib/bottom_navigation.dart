// import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intrust_finance_india/Paymet.dart';
import 'package:intrust_finance_india/account.dart';
import 'package:intrust_finance_india/home.dart';
import 'package:intrust_finance_india/offer.dart';
import 'package:intrust_finance_india/service.dart';

class Custom_Bottom_Navigation extends StatefulWidget {
  const Custom_Bottom_Navigation();

  @override
  State<Custom_Bottom_Navigation> createState() =>
      _Custom_Bottom_NavigationState();
}

class _Custom_Bottom_NavigationState extends State<Custom_Bottom_Navigation> {
  final List<Widget> _pages = [
    Home(),
    Service(),
    Payment(),
    Offer(),
    Account(),
  ];
  final PageController _pageController = PageController();
  int newIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (index) {
          setState(() {
            print(newIndex);
            newIndex = index;
          });
        },
        currentIndex: newIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff172554),
        selectedItemColor: Color(0xffFACC15),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.repeat_outlined, color: Colors.white),
            label: 'Service ',
            activeIcon: Icon(
              Icons.repeat_outlined,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee, color: Colors.white),
            label: 'Payment',
            activeIcon: Icon(
              Icons.currency_rupee,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_outlined, color: Colors.white),
            label: 'Offers',
            activeIcon: Icon(
              Icons.verified_user_outlined,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outlined, color: Colors.white),
            label: 'Account',
            activeIcon: Icon(
              Icons.lock_outlined,
            ),
          ),
        ]);
  }
}
