import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulytic_challange/utils/colors.dart';
import 'package:mulytic_challange/utils/routes/app_routes.dart';
import 'controller/auth_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: GetMaterialApp(
        title: 'Mulytic Challange',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        initialRoute: AppRoutes.initialRoute,
        initialBinding: BindingsBuilder(() {
          Get.put(AuthController());
        }),
        getPages: AppRoutes.pages,
      ),
    );
  }
}
