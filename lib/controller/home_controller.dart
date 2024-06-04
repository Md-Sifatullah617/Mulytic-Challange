import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var homePageCurrentIndex = 0.obs;
  var isLoading = false.obs;
  TextEditingController companyIdController = TextEditingController();
  TextEditingController issueTypeController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController summaryController = TextEditingController();
  TextEditingController priorityController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();
  TextEditingController assignController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController selectedClass = TextEditingController();
  TextEditingController selectedSubject = TextEditingController();

  List classList = [
    "Class 1",
    "Class 2",
    "Class 3",
    "Class 4",
    "Class 5",
    "Class 6",
    "Class 7",
    "Class 8",
    "Class 9",
    "Class 10",
    "Class 11",
    "Class 12",
  ];

  List subjectList = [
    "Math",
    "Science",
    "English",
    "Hindi",
    "Social Science",
    "Computer",
    "Physics",
    "Chemistry",
  ];

  List<Map<String, dynamic>> gradeList = [
    {
      "grade": "A+",
      "noOfStudent": 1,
      "percentage": 20,
    },
    {
      "grade": "A",
      "noOfStudent": 1,
      "percentage": 20,
    },
    {
      "grade": "A-",
      "noOfStudent": 0,
      "percentage": 0,
    },
    {
      "grade": "B",
      "noOfStudent": 1,
      "percentage": 20,
    },
    {
      "grade": "C",
      "noOfStudent": 1,
      "percentage": 20,
    },
    {
      "grade": "D",
      "noOfStudent": 1,
      "percentage": 20,
    },
    {
      "grade": "F",
      "noOfStudent": 0,
      "percentage": 0,
    },
  ];
}
