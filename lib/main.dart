import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task_management_app/Providers/settings_provider.dart';
import 'package:task_management_app/UI/Home/home_screen.dart';
import 'package:task_management_app/UI/Style/mytheme.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/login/login_screen_widget.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/login_screen.dart';
import 'package:task_management_app/UI/auth/Login%20Screeen/register/sing_up_screen_widget.dart';
import 'firebase_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: TaskManagement(),
    ),
  );
}

class TaskManagement extends StatelessWidget {
  const TaskManagement({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      theme: Mytheme.lightTheme,
      darkTheme: Mytheme.darkTheme,
      themeMode: provider.currentTheme,
      locale: provider.currentLocale,
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        SingUpScreenWidget.routeName: (context) => SingUpScreenWidget(),
        LoginScreenWidget.routeName: (context) => LoginScreenWidget(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
