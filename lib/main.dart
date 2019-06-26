import 'package:flutter_web/material.dart';
import 'package:my_portfolio/profile_page.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.orange,
        fontFamily: "GoogleSansRegular",
      ),
      home: ProfilePage(),
    );
  }
}