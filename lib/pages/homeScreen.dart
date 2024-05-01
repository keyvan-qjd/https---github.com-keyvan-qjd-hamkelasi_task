import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hamkelasi/pages/loginScreen.dart';
import 'package:line_icons/line_icons.dart';

import '../gen/assets.gen.dart';
import 'getStudentListScreen.dart';

class HomePage extends StatefulWidget {
  static var pressedExit;

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (pressedExit == true) {
      Get.to(LoginPage());
    }
  }

  bool pressedExit = false;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _selectedIndex = index;
  } // Keep track of the selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: ListView(
            // Removes padding from top to avoid extra space
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 160,
                child: DrawerHeader(
                  // Set a background color or image here (optional)
                  child: Center(
                    child: Text(
                      'همکلاسی',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
              ),
              // ListTile(
              //   title: Text(
              //     'حساب کاربری',
              //     textDirection: TextDirection.rtl,
              //   ),
              //   onTap: () {
              //     // Handle tap event for item 1 (optional)
              //     Navigator.pop(context); // Close the drawer
              //   },
              // ),
              // ListTile(
              //   title: Text(
              //     'تنظیمات',
              //     textDirection: TextDirection.rtl,
              //   ),
              //   onTap: () {
              //     // Handle tap event for item 2 (optional)
              //   },
              // ),
              // ListTile(
              //   title: Text(
              //     'مشخصه مدرسه',
              //     textDirection: TextDirection.rtl,
              //   ),
              //   onTap: () {
              //     // Handle tap event for item 3 (optional)
              //   },
              // ),
              // ListTile(
              //   title: Text(
              //     'درباره برنامه',
              //     textDirection: TextDirection.rtl,
              //   ),
              //   onTap: () {
              //     // Handle tap event for item 4 (optional)
              //   },
              // ),

              Padding(
                padding: EdgeInsets.only(top: 15, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(LoginPage());
                      // },
                      child: Text(
                        "حساب کاربری",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(LoginPage());
                      // },
                      child: Text(
                        "تنظیمات",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(LoginPage());
                      // },
                      child: Text(
                        "مشخصه مدرسه",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(LoginPage());
                      // },
                      child: Text(
                        "درباره ی برنامه",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginPage());
                      },
                      child: Text(
                        "خروج",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              // ListTile(
              //   onTap: () {
              //     Get.toEnd(() => HomePage());
              //   },
              //   title: Text(
              //     'خروج از حساب کاربری',
              //     textDirection: TextDirection.rtl,
              //   ),
              // ),
            ],
          ),
        ),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: GNav(
            onTabChange: (index) {
              print(index);
            },
            tabBorderRadius: 15,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.teal.shade200,
            backgroundColor: Colors.white,
            gap: 8,
            padding: EdgeInsets.all(12),
            tabs: [
              GButton(
                text: 'تفویم',
                icon: LineIcons.calendar,
                iconColor: Colors.grey,
              ),
              GButton(
                iconColor: Colors.grey,
                text: 'میز کار',
                icon: LineIcons.home,
              ),
              GButton(
                icon: LineIcons.search,
                text: 'رسانه',
                iconColor: Colors.grey,
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.teal.withOpacity(0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(GetStudentGradesList());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: 70,
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list_alt_outlined),
                          Text("نمرات"),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

// GNav(
//         rippleColor: Colors.black, // tab button ripple color when pressed
//         hoverColor: Colors.grey, // tab button hover color
//         haptic: true, // haptic feedback
//         tabBorderRadius: 15,
//         tabActiveBorder:
//             Border.all(color: Colors.black, width: 1), // tab button border
//         tabBorder:
//             Border.all(color: Colors.grey, width: 1), // tab button border
//         tabShadow: [
//           BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
//         ], // tab button shadow
//         curve: Curves.easeOutExpo, // tab animation curves
//         duration: Duration(milliseconds: 900), // tab animation duration
//         gap: 8, // the tab button gap between icon and text
//         color: Colors.grey[800], // unselected icon color
//         activeColor: Colors.purple, // selected icon and text color
//         iconSize: 24, // tab button icon size
//         tabBackgroundColor:
//             Colors.purple.withOpacity(0.1), // selected tab background color
//         padding: EdgeInsets.symmetric(
//             horizontal: 20, vertical: 5), // navigation bar padding
//         tabs: [
//           GButton(
//             icon: LineIcons.home,
//             text: 'Home',
//           ),
//           GButton(
//             icon: LineIcons.heart,
//             text: 'Likes',
//           ),
//           GButton(
//             icon: LineIcons.search,
//             text: 'Search',
//           ),
//           GButton(
//             icon: LineIcons.user,
//             text: 'Profile',
//           )
//         ],
//       ),
