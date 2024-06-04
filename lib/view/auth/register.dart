import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/auth_controller.dart';
import 'package:mulytic_challange/utils/colors.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_text_field.dart';
import 'package:mulytic_challange/utils/custom_widget/primary_button.dart';
import 'package:mulytic_challange/utils/routes/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            'Register',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.01,
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                children: [
                  //first name and last name
                  Expanded(
                    child: CustomTextField(
                      txtController: controller.firstNameController,
                      title: "First Name",
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Expanded(
                    child: CustomTextField(
                      txtController: controller.lastNameController,
                      title: "Last Name",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                txtController: controller.emailController,
                title: "Email Address",
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
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              PrimaryBtn(
                  title: "Register",
                  width: Get.width * 0.35,
                  onPressed: () {
                    Get.toNamed(AppRoutes.dashBoardScreen);
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: AppColors.greyColor3,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.initialRoute);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
