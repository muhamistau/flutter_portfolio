import 'package:flutter_web/material.dart';

class SkillItem extends StatelessWidget {
  final String skillName;
  final String imageAsset;

  SkillItem({this.skillName, this.imageAsset});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            skillName,
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}