import 'package:flutter/material.dart';

class VehicleHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.arrow_back,
            size: 30,
          ),
          Text(
            'HULK',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          Icon(
            Icons.edit,
            size: 30,
          ),
        ],
      ),
    );
  }
}
