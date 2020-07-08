import 'package:flutter/material.dart';

class HoursArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {},
          constraints: BoxConstraints(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: BorderSide(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          padding: EdgeInsets.all(
              10.0), // optional, in order to add additional space around text if needed
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '120',
              style: TextStyle(
                fontSize: 75.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'HORAS',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        RawMaterialButton(
          onPressed: () {},
          constraints: BoxConstraints(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: BorderSide(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          padding: EdgeInsets.all(
              10.0), // optional, in order to add additional space around text if needed
          child: Icon(
            Icons.remove,
            size: 30,
          ),
        ),
      ],
    );
  }
}
