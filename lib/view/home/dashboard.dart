import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/home_controller.dart';
import 'package:mulytic_challange/utils/colors.dart';
import 'package:mulytic_challange/view/home/home_page.dart';
import 'package:mulytic_challange/view/home/profile_page.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
          body: IndexedStack(
            index: controller.homePageCurrentIndex.value,
            children: const [
              HomePage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: controller.homePageCurrentIndex.value == 0
                      ? AppColors.primaryColor
                      : AppColors.greyColor2,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: controller.homePageCurrentIndex.value == 1
                      ? AppColors.primaryColor
                      : AppColors.greyColor2,
                ),
                label: "Profile",
              ),
            ],
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.greyColor2,
            currentIndex: controller.homePageCurrentIndex.value,
            onTap: (value) {
              controller.homePageCurrentIndex.value = value;
              controller.update();
            },
          )),
    );
  }
}
