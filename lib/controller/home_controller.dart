import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var homePageCurrentIndex = 0.obs;
  var isLoading = false.obs;
  // var skillList = <String>[].obs;
  // final skillController = TextEditingController();
  TextEditingController companyIdController = TextEditingController();
  TextEditingController issueTypeController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController summaryController = TextEditingController();
  TextEditingController priorityController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();
  TextEditingController assignController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  var updateTaskId = 0.obs;
}
