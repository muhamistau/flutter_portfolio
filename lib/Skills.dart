import 'package:flutter_web/material.dart';
import 'package:my_portfolio/Widgets/skill_item.dart';
import 'responsive_widget.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        // height: 200.0,
        // color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "SKILL SETS",
                    textScaleFactor: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // Proficient in Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Proficient in :",
                  textScaleFactor: 2,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SkillItem(skillName: "Native Android", imageAsset: "language.png"),
                        SkillItem(skillName: "Java", imageAsset: "language.png"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SkillItem(skillName: "Git", imageAsset: "language.png"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),

                // Familiar with section
                Text(
                  "Familiar with :",
                  textScaleFactor: 2,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SkillItem(skillName: "Flutter", imageAsset: "language.png"),
                        SkillItem(skillName: "Dart", imageAsset: "language.png"),
                        SkillItem(skillName: "PHP", imageAsset: "language.png"),
                        SkillItem(skillName: "CodeIgniter", imageAsset: "language.png"),
                        SkillItem(skillName: "Laravel/Lumen", imageAsset: "language.png"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SkillItem(skillName: "MySQL", imageAsset: "language.png"),
                        SkillItem(skillName: "C++", imageAsset: "language.png"),
                        SkillItem(skillName: "C#", imageAsset: "language.png"),
                        SkillItem(skillName: "HTML", imageAsset: "language.png"),
                        SkillItem(skillName: "CSS", imageAsset: "language.png"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}