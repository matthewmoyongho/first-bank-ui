import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.account_circle,
          ),
          label: 'Beneficiaries',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.favorite_border,
          ),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0XFF1B2A47),
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      backgroundColor: const Color(0XFF1B2A47),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedLabelStyle: const TextStyle(color: Colors.white),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedIconTheme: const IconThemeData(color: Color(0XFFFFB60A)),
      unselectedIconTheme: const IconThemeData(color: Color(0XFF8C94A7)),
      elevation: 0,
      iconSize: 20,
      onTap: (val) {
        setState(() {
          widget.currentIndex = val;
        });
      },
    );
    ;
  }
}
