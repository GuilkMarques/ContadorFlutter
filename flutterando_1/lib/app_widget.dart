import 'package:flutter/material.dart';
import 'package:flutterando_1/app_controller.dart';
import 'package:flutterando_1/home_page.dart';
import 'package:flutterando_1/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            drawerTheme: DrawerThemeData(
              backgroundColor: Colors.green[400],
            ),
            appBarTheme: AppBarTheme(
              color: Colors.green[500],
            ),
            brightness: AppController.instance.isdarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
