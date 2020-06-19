import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key key, this.scaffoldKey}) : super(key: key);
  final scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () => scaffoldKey.currentState.openDrawer(),
            child: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          SvgPicture.asset(
            'assets/images/marina_wave_logo.svg',
            color: Colors.white,
            semanticsLabel: 'Marina Wave Logo',
            height: 30,
          ),
        ],
      ),
    );
  }
}
