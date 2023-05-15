import 'package:all_star/ui/views/marriage_portal/marriage_home_screen/marriage_home_screen.dart';
import 'package:all_star/ui/views/plan_screen.dart';
import 'package:all_star/ui/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/colors.dart';
import 'marriage_portal/marriage_splash/marriage_splash_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      // Show splash screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MarriageSplashScreen(),
        ),
      ).then((_) {
        // Move to next tab when user taps on screen
        setState(() {
          _selectedIndex = 1;
        });
      });
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const PlanScreen(),
          ),
          Offstage(
              offstage: _selectedIndex != 1, child: const MarriageHomeScreen()),
          Offstage(offstage: _selectedIndex != 2, child: const ProfileScreen()),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 35.h),
        height: 70.h, // set the height to 60 height units
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              40.r // set the top border radius to 20 width units
              ),
          color: greenColor, // set the background color to green
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.sp,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.portable_wifi_off,
                size: 30.sp,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                size: 30.sp,
              ),
              label: 'Favorites',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors
              .transparent, // set the background color of the BottomNavigationBar to transparent
          selectedItemColor:
              nblueColor, // set the color of the selected item to white
          unselectedItemColor:
              whiteColor, // set the color of the unselected items to grey
        ),
      ),
    );
  }
}
