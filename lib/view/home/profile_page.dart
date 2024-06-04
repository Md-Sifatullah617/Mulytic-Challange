import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/auth_controller.dart';
import 'package:mulytic_challange/controller/home_controller.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (authcontroller) => Scaffold(
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
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: Get.width * 0.06,
                                  fontWeight: FontWeight.bold,
                                )),
                  ),
                  // Stack(
                  //   children: [
                  //     Image.asset(
                  //       AppPhotos.avatar,
                  //       width: Get.width * 0.3,
                  //       height: Get.width * 0.3,
                  //       fit: BoxFit.cover,
                  //     ),
                  //     Positioned(
                  //       bottom: 0,
                  //       right: 0,
                  //       child: Container(
                  //         width: Get.width * 0.1,
                  //         height: Get.width * 0.1,
                  //         decoration: BoxDecoration(
                  //             color: AppColors.primaryColor,
                  //             borderRadius: BorderRadius.circular(100)),
                  //         child: const Icon(
                  //           Icons.add,
                  //           color: AppColors.whiteColor,
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),

                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  CustomTextField(
                    title: "Full Name",
                    // initialvalue: authcontroller.user.name,
                    isEnable: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomTextField(
                    title: "Email Address",
                    // initialvalue: authcontroller.user.email,
                    isEnable: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomTextField(
                    title: "Phone Number",
                    // initialvalue: authcontroller.user.phone,
                    isEnable: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomTextField(
                    title: "Created By",
                    // initialvalue: authcontroller.user.createdBy,
                    isEnable: false,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("User Type",
                  //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //             color: AppColors.greyColor3,
                  //             fontSize: Get.width * 0.035,
                  //           )),
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.01,
                  // ),
                  // Row(
                  //   children: [
                  //     // male and female option with circle checkbox
                  //     CustomCheckBoxListTile(
                  //       isActive: true,
                  //       title: "Seller",
                  //     ),
                  //     SizedBox(
                  //       width: Get.width * 0.05,
                  //     ),
                  //     CustomCheckBoxListTile(
                  //       title: "Buyer",
                  //     ),
                  //     SizedBox(
                  //       width: Get.width * 0.05,
                  //     ),
                  //     CustomCheckBoxListTile(
                  //       title: "Both",
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.02,
                  // ),
                  // CustomTextField(
                  //   textFieldHeight: Get.height * 0.06,
                  //   title: "Salary",
                  //   anotherWidget: Text(
                  //     "SAR 1000",
                  //     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //           color: AppColors.primaryColor,
                  //         ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.02,
                  // ),
                  // CustomTextField(
                  //   textFieldHeight: Get.height * 0.065,
                  //   title: "Birth Date",
                  //   suffixWidget: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.calendar_today_outlined,
                  //       size: Get.width * 0.05,
                  //       color: Colors.grey.shade400,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.02,
                  // ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Gender",
                  //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //             color: AppColors.greyColor3,
                  //             fontSize: Get.width * 0.035,
                  //           )),
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.01,
                  // ),
                  // Row(
                  //   children: [
                  //     // male and female option with circle checkbox
                  //     CustomCheckBoxListTile(
                  //       isActive: true,
                  //       title: "Male",
                  //     ),
                  //     SizedBox(
                  //       width: Get.width * 0.05,
                  //     ),
                  //     CustomCheckBoxListTile(
                  //       title: "Female",
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  //logout button
                  ElevatedButton(
                    onPressed: () {
                      // SecureData.deleteAllSecureData();
                      // Get.offAllNamed(AppRoutes.login);
                    },
                    child: const Text("Logout"),
                  ),
                  // CustomTextField(
                  //   title: "Skills",
                  //   txtController: controller.skillController,
                  //   leading: Wrap(
                  //     children: [
                  //       ...List.generate(
                  //         controller.skillList.length,
                  //         (index) => InkWell(
                  //           onTap: () {
                  //             controller.skillList.removeAt(index);
                  //             controller.update();
                  //           },
                  //           child: Container(
                  //             height: Get.height * 0.05,
                  //             margin: EdgeInsets.symmetric(
                  //               horizontal: Get.width * 0.01,
                  //               vertical: Get.width * 0.02,
                  //             ),
                  //             padding: EdgeInsets.symmetric(
                  //               horizontal: Get.width * 0.02,
                  //               vertical: Get.width * 0.01,
                  //             ),
                  //             decoration: BoxDecoration(
                  //                 color: AppColors.primaryColor2,
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 Text(
                  //                   controller.skillList[index],
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                         color: AppColors.primaryColor,
                  //                       ),
                  //                 ),
                  //                 SizedBox(
                  //                   width: Get.width * 0.01,
                  //                 ),
                  //                 Icon(
                  //                   Icons.close,
                  //                   color: AppColors.primaryColor,
                  //                   size: Get.width * 0.03,
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   onFieldSubmitted: (p0) {
                  //     controller.skillList.add(p0);
                  //     controller.skillController.clear();
                  //     controller.update();
                  //   },
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.02,
                  // ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Favorite Social Media",
                  //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //             color: AppColors.greyColor3,
                  //             fontSize: Get.width * 0.035,
                  //           )),
                  // ),
                  // SizedBox(
                  //   height: Get.height * 0.01,
                  // ),
                  // CustomCheckBoxListTile(
                  //   isActive: true,
                  //   boxShape: BoxShape.rectangle,
                  //   leading: const Icon(
                  //     Icons.facebook,
                  //     color: AppColors.facebookColor,
                  //   ),
                  //   title: "Facebook",
                  // ),
                  // CustomCheckBoxListTile(
                  //   boxShape: BoxShape.rectangle,
                  //   leading: const Icon(
                  //     FontAwesomeIcons.twitter,
                  //     color: AppColors.twitterColor,
                  //   ),
                  //   title: "Twitter",
                  // ),
                  // CustomCheckBoxListTile(
                  //   boxShape: BoxShape.rectangle,
                  //   leading: const Icon(
                  //     FontAwesomeIcons.linkedin,
                  //     color: AppColors.linkedinColor,
                  //   ),
                  //   title: "Linkedin",
                  // ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
