import 'package:chat_box/pages/login_screen.dart';
import 'package:chat_box/pages/splash_page.dart';
import 'package:chat_box/services/navigation_services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen(
      onInitializationComplete: () {
        runApp( MainApp());
      },
      key: UniqueKey()));
}

class MainApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Chat_Box',
        theme: ThemeData(
            backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
            )),
      navigatorKey: NavigationServices.navigatorKye,
      initialRoute: '/login',
      routes: {
          '/login' :(context) =>const LoginScreen()
      },
    );
  }
}
