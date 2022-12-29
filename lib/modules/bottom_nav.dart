import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int _selectedIndex = 2;

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home-outlined.svg",
            height: 25,
            width: 25,
            color: _selectedIndex == 0
                ? Color.fromRGBO(11, 114, 181, 1)
                : Color.fromRGBO(218, 218, 218, 1),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/content-save-outline.svg",
            height: 30,
            width: 30,
            color: _selectedIndex == 1
                ? Color.fromRGBO(11, 114, 181, 1)
                : Color.fromRGBO(218, 218, 218, 1),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/vector-polyline-edit.svg",
            height: 30,
            width: 30,
            color: _selectedIndex == 2
                ? Color.fromRGBO(11, 114, 181, 1)
                : Color.fromRGBO(218, 218, 218, 1),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/account-outline.svg",
            height: 30,
            width: 30,
            color: _selectedIndex == 3
                ? Color.fromRGBO(11, 114, 181, 1)
                : Color.fromRGBO(218, 218, 218, 1),
          ),
          label: '',
        ),
      ],
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
