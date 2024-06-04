import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/home_controller.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_text_field.dart';
import 'package:mulytic_challange/utils/custom_widget/primary_button.dart';
import 'package:mulytic_challange/utils/routes/app_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05, vertical: Get.height * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Profile Informations",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: Get.width * 0.06,
                            fontWeight: FontWeight.bold,
                          )),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                const CustomTextField(
                  title: "Full Name",
                  isEnable: false,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const CustomTextField(
                  title: "Email Address",
                  isEnable: false,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const CustomTextField(
                  title: "Phone Number",
                  isEnable: false,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                //logout button
                PrimaryBtn(
                    title: "Log out",
                    onPressed: () {
                      Get.toNamed(AppRoutes.initialRoute);
                    }),
                SizedBox(
                  height: Get.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
