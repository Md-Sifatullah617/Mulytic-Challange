import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var pwdObsecured = false.obs;
  var confirmPwdObsecured = false.obs;
  // var aboutController = TextEditingController();
  // var salaryController = TextEditingController();
  // var dobController = TextEditingController();
  // var selectedGender = "".obs;
  // var listOfSkills = <int>[].obs;
  // var listOfSocialMedia = <String>[].obs;
}
