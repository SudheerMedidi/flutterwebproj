import 'package:flutter/material.dart';
import 'package:webproj/routes_name.dart';
import 'package:webproj/firstPage.dart';
import 'package:webproj/sencondPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.FIRST_PAGE:
        return _GeneratePageRoute(
            widget: FirstPage(), routeName: settings.name);
      case RoutesName.SECOND_PAGE:
        return _GeneratePageRoute(
            widget: SecondPage(), routeName: settings.name);
      default:
        return _GeneratePageRoute(
            widget: FirstPage(), routeName: settings.name);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({this.widget, this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
