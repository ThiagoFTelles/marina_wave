import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
          FlatButton(
            onPressed: () {
              Modular.to.pushNamed("/");
            },
            child: Image.asset(
              'assets/images/logo.png',
              height: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
