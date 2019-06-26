import 'package:flutter_web/material.dart';
import 'package:my_portfolio/Skills.dart';
import 'responsive_widget.dart';
import 'dart:html' as html;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Skills(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        <Widget>[
          Title(),
            Row(
              children: <Widget>[
                NavButton(
                  text: "About",
                  onPressed: () {},
                ),
                NavButton(
                  text: "Work",
                  onPressed: () {},
                ),
                NavButton(
                  text: "Contact",
                  onPressed: () {},
                ),
              ],
            )
        ],
      ),
      smallScreen: Column(
        mainAxisAlignment:MainAxisAlignment.center,
            // : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
        <Widget>[
          Title(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          NavButton(
            text: "About",
            onPressed: () {},
          ),
          NavButton(
            text: "Work",
            onPressed: () {},
          ),
          NavButton(
            text: "Contact",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "PORTFOLIO",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("pic.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Muhammad Islam",
        textScaleFactor: 3.5,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "Taufikurahman",
        textScaleFactor: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Bandung-born Computer Science major Student with\n"
        "high interest in Mobile Application Development\n"
        "Technology especially in Android Development and Flutter.",
        softWrap: true,
        textScaleFactor: 1.5,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black54),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              "My Resume",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.orange,
            onPressed: () {
              html.window.open(
                "https://drive.google.com/open?id=1GgT783rWHHoIU4jAVj4JQDOy9UX7to3F",
                "Resume"
              );
            },
            padding: EdgeInsets.all(10),
          ),
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {
                  html.window.open("https://github.com/muhamistau", "Github");
                },
                color: Colors.blue,
              ),
              NavButton(
                text: "Twitter",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            "Muhammad Islam Taufikurahman ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {
              html.window.open("https://github.com/muhamistau", "Github");
            },
            color: Colors.blue,
          ),
          NavButton(
            text: "Twitter",
            onPressed: () {},
            color: Colors.blue,
          ),
          Text(
            "Muhammad Islam Taufikurahman ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}