import 'package:get/get.dart';
import 'package:mulytic_challange/controller/home_controller.dart';
import 'package:mulytic_challange/view/auth/login_page.dart';
import 'package:mulytic_challange/view/auth/register.dart';
import 'package:mulytic_challange/view/home/dashboard.dart';

class AppRoutes {
  static const String initialRoute = "/";
  static const String login = "/login";
  static const String registerScreen = "/registerScreen";
  static const String dashBoardScreen = "/dashBoardScreen";

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: registerScreen,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: dashBoardScreen,
      page: () => const DashBoardScreen(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),
  ];
}
