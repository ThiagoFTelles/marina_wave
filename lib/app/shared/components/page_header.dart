import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key key, this.scaffoldKey}) : super(key: key);
  final scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: () => scaffoldKey.currentState.openDrawer(),
          child: Icon(Icons.menu),
        ),
        Text('Marina Wave'),
      ],
    );
  }
}
