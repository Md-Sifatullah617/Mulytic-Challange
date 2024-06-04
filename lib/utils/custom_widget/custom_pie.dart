import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mulytic_challange/utils/colors.dart';

class PieChartSample2 extends StatefulWidget {
  final List<Map<String, dynamic>> gradeList;

  const PieChartSample2({super.key, required this.gradeList});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections(widget.gradeList),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(List<Map<String, dynamic>> grades) {
    return List.generate(grades.length, (i) {
      final grade = grades[i];
      return PieChartSectionData(
        color: [
          AppColors.blueColor,
          AppColors.blueColor2,
          AppColors.purpleColor,
          AppColors.purpleColor2,
          AppColors.purpleColor3,
        ][i % 5],
        value: double.parse(grade['percentage'].toString()),
        radius: 120,
        title: '${grade['noOfStudent']} (${grade['percentage']}%)',
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    });
  }
}
