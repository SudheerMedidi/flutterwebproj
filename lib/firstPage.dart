import 'package:flutter/material.dart';
import 'package:webproj/routes_name.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          Container(
            child: Center(
              child: Text("FIRST PAGE"),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.SECOND_PAGE);
              },
              child: Text("NAVIGATE")),
        ],
      ),
    );
  }
}
