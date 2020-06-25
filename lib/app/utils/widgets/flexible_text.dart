import 'package:flutter/material.dart';

class FlexibleText extends StatelessWidget {
  final TextStyle style;
  final String text;

  const FlexibleText({Key key, @required this.style, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          style: style,
          text: text,
        ),
      ),
    );
  }
}
