import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/utils/constants.dart';

class StatusContainer extends StatelessWidget {
  final Widget child;
  final bool border;

  const StatusContainer({Key key, @required this.child, this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: () {
          Modular.to.pushNamed("/vehicles");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
              color: border ? kYellow : Colors.transparent, width: 3),
        ),
        color: kBlue,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
        child: child,
      ),
    );
  }
}
