import 'package:flutter/material.dart';
import 'package:task_management_app/UI/Home/home_screen.dart';
import 'package:task_management_app/UI/Style/mytheme.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/login/login_screen_widget.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/login_screen.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/register/sing_up_screen_widget.dart';

void main() {
  runApp(const TaskManagement());
}

class TaskManagement extends StatelessWidget {
  const TaskManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightTheme,
      darkTheme: Mytheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        SingUpScreenWidget.routeName: (context) => SingUpScreenWidget(),
        LoginScreenWidget.routeName: (context) => LoginScreenWidget(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
