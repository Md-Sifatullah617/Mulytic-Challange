import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/auth_controller.dart';
import 'package:mulytic_challange/utils/colors.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_text_field.dart';
import 'package:mulytic_challange/utils/custom_widget/primary_button.dart';
import 'package:mulytic_challange/utils/photos.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            // automaticallyImplyLeading: false,
            // titleSpacing: 0,
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.arrow_back_ios),
            // ),
            title: Text(
              'Account Login',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Column(
                children: [
                  Image.asset(
                    AppPhotos.loginPhoto,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomTextField(
                    txtController: controller.emailController,
                    title: "Email",
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Obx(
                    () => CustomTextField(
                      txtController: controller.passwordController,
                      title: "Password",
                      obscureText: controller.pwdObsecured.value,
                      suffixWidget: IconButton(
                        onPressed: () {
                          controller.pwdObsecured.value =
                              !controller.pwdObsecured.value;
                        },
                        icon: Icon(
                          controller.pwdObsecured.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColors.greyColor2,
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: CheckboxListTile(
                  //           value: true,
                  //           title: Text(
                  //             "Remember me",
                  //             style: Theme.of(context)
                  //                 .textTheme
                  //                 .titleMedium!
                  //                 .copyWith(
                  //                   color: AppColors.greyColor3,
                  //                 ),
                  //           ),
                  //           controlAffinity: ListTileControlAffinity.leading,
                  //           visualDensity: VisualDensity.compact,
                  //           activeColor: AppColors.primaryColor,
                  //           contentPadding: EdgeInsets.zero,
                  //           onChanged: (value) {}),
                  //     ),
                  //     TextButton(
                  //       onPressed: () {},
                  //       child: const Text(
                  //         "Forgot Password?",
                  //         style: TextStyle(
                  //           color: AppColors.greyColor3,
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  PrimaryBtn(
                      title: "Login",
                      onPressed: () {
                        print(
                            "email: ${controller.emailController.text}\npassword: ${controller.passwordController.text}");
                      }),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text(
                  //       "Don't have an account?",
                  //       style: TextStyle(
                  //         color: AppColors.greyColor3,
                  //       ),
                  //     ),
                  //     TextButton(
                  //       onPressed: () {
                  //         Get.toNamed(AppRoutes.registerScreen);
                  //       },
                  //       child: const Text(
                  //         "Register",
                  //         style: TextStyle(
                  //           color: AppColors.primaryColor,
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}
