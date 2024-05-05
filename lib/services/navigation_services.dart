import 'package:flutter/material.dart';

class NavigationServices {
  static GlobalKey<NavigatorState> navigatorKye = GlobalKey<NavigatorState>();

  void removeAndNanigateToRoute(String route) {
    navigatorKye.currentState?.popAndPushNamed(route);
  }

  void nanigateToRoute(String route) {
    navigatorKye.currentState?.pushNamed(route);
  }

  void nanigateToPage(Widget page) {
    navigatorKye.currentState?.push(MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ));
  }

  void goBack()
  {
    navigatorKye.currentState?.pop();
  }
}
