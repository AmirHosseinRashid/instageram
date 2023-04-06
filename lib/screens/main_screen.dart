import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_application_instageram/screens/Modal_Bottom_Sheet.dart';
import 'package:flutter_application_instageram/screens/activity_screen.dart';
import 'package:flutter_application_instageram/screens/home_screen.dart';
import 'package:flutter_application_instageram/screens/post_screen.dart';
import 'package:flutter_application_instageram/screens/profile_screen.dart';
import 'package:flutter_application_instageram/screens/search_screen.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int _selectedBottomNavigationItem = 0;

  Color bordermy = greyColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: blackColor2,
              fixedColor: pinkColor,
              unselectedItemColor: whiteColor,
              currentIndex: _selectedBottomNavigationItem,
              onTap: (int index) {
                setState(() {
                  _selectedBottomNavigationItem = index;
                });
                setState(() {
                  if (bordermy == greyColor && index == 4) {
                    bordermy = pinkColor;
                  } else {
                    bordermy = greyColor;
                  }
                });
              },
              // elevation: 9,
              showUnselectedLabels: false,

              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_home.png'),
                    activeIcon: Image.asset('images/icon_active_home.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_search_navigation.png'),
                    activeIcon:
                        Image.asset('images/icon_search_navigation_active.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_add_navigation.png'),
                    activeIcon:
                        Image.asset('images/icon_add_navigation_active.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_activity_navigation.png'),
                    activeIcon: Image.asset(
                        'images/icon_activity_navigation_active.png'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: bordermy),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ClipRRect(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset('images/AmirhossinRashid.png'),
                        ),
                      ),
                    ),
                    label: ''),
              ],
            ),
          ),
        ),
        body: SafeArea(child: _getLayout(_selectedBottomNavigationItem)));
  }

  Widget _getLayout(indexpage) {
    return IndexedStack(
      index: indexpage,
      children: [
        homepage(),
        search_screen(),
        postpage(),
        activitypage(),
        profilepage(),
      ],
    );
  }
}
