import 'package:flutter/material.dart';
import 'package:webproj/routes_name.dart';
import 'package:webproj/onGenerateRoute.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => HomePage(child: child),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.FIRST_PAGE,
    );
  }
}

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
