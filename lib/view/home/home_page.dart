import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mulytic_challange/controller/home_controller.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_pie.dart';
import 'package:mulytic_challange/utils/custom_widget/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTextField(
                      hintText: "Class",
                      isDropdown: true,
                      dropDownItems: controller.classList
                          .map((e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onchange: (p0) {
                        controller.selectedClass.text = p0!;
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    flex: 4,
                    child: CustomTextField(
                      hintText: "Subject",
                      isDropdown: true,
                      dropDownItems: controller.subjectList
                          .map((e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onchange: (p0) {
                        controller.selectedSubject.text = p0!;
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Total Student: 5',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10.h),
              PieChartSample2(
                gradeList: controller.gradeList,
              ),
              SizedBox(height: 10.h),
              DataTable(
                columns: const [
                  DataColumn(label: Text('Grade')),
                  DataColumn(label: Text('Student')),
                  DataColumn(label: Text('Percentage')),
                ],
                rows: controller.gradeList
                    .map((e) => DataRow(cells: [
                          DataCell(Text(e['grade'].toString())),
                          DataCell(Text(e['noOfStudent'].toString())),
                          DataCell(Text(e['percentage'].toString())),
                        ]))
                    .toList(),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
