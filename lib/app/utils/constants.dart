import 'package:flutter/material.dart';

const String URL_BASE = 'https://marinawave.com.br/api';
//const String URL_BASE = 'http://10.0.2.2:8000/api'; //este IP é o localhost no Android Studio

const kBlue = Color(0xFF111328);
const kLightBlue = Color(0xFF1D1E33);
const kVividBlue = Color(0xFF4A57E0);
const kLogoBlue = Color(0xFF0075BF);
const kLogoOrange = Color(0xFFFF5631);
const kGreen = Color(0xFF24D876);
const kYellow = Color(0xFFD8C924);
const kRed = Color(0xFFEB1555);
const kTextColor = Color(0xFF8D8E98);
final kButtonColor = Color(0xFF4C4F5E);
final kPrimaryColor = Color(0xFF0A0E21);
final kScaffoldBackgroundColor = Color(0xFF0A0E21);

const kSummaryInfoTextStyle = TextStyle(
  fontSize: 21.0,
  color: kTextColor,
);

const kSummaryHeaderTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 23,
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kTextColor,
);

const kNumberTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);

const kHeaderTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
  color: kTextColor,
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value', //use copyWith() para configurar o hintText

  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
