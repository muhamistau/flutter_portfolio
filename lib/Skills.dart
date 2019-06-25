import 'package:flutter_web/material.dart';
import 'responsive_widget.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        height: 200.0,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("data")
              ],
            ),
            Row(
              children: <Widget>[
                Text("data")
              ],
            ),
            Row(
              children: <Widget>[
                Text("data")
              ],
            ),
            Row(
              children: <Widget>[
                Text("data")
              ],
            ),
          ],
        ),
      ),
    );
  }
}