import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../home/views/home_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({super.key});

  final List<Widget> _pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const      Color(0xFF0F2027),
      body: Obx(() => _pages[controller.selectedIndex.value]),
      bottomNavigationBar:        AnimatedContainer(
        duration: const Duration(seconds: 3),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF232526),
              Color(0xFF232526),
              Color(0xFF232526),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Container(

            decoration: BoxDecoration(
              color:Color(0xFF232526),

              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.1),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Obx(
                    () => GNav(
                  selectedIndex: controller.selectedIndex.value,
                  onTabChange: controller.changeTab,
                  gap: 8,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  tabBorderRadius: 16,
                      backgroundColor:                              Color(0xFF232526),

                      color: Colors.tealAccent,
                  activeColor: Colors.black,
                  tabBackgroundColor:Colors.tealAccent,

                  tabs: const [
                    GButton(
                      icon: CupertinoIcons.house_fill,
                      text: 'Home',
                    ),
                    GButton(
                      icon: CupertinoIcons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: CupertinoIcons.bell,
                      text: 'Notifications',
                    ),
                    GButton(
                      icon: CupertinoIcons.person,
                      text: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
