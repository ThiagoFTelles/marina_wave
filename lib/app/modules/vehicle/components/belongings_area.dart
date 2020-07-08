import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marinawave/app/utils/constants.dart';

class BelongingsArea extends StatefulWidget {
  @override
  _BelongingsAreaState createState() => _BelongingsAreaState();
}

class _BelongingsAreaState extends State<BelongingsArea> {
  String belongings = "";
  bool hideOtherAreas = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBlue,
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          maxLength: 50,
          onTap: () {
            hideOtherAreas = true;
          },
          onSubmitted: (String value) {
            setState(() {
              belongings = value;
              hideOtherAreas = false;
            });
          },
          maxLines: 3,
          decoration: InputDecoration.collapsed(
              hintText: "Descreva os pertences aqui.",
              hintStyle: TextStyle(color: Colors.white70)),
        ),
      ),
    );
  }
}
