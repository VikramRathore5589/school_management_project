import 'package:flutter/material.dart';

class Schedule {
  String text;
  String text1;
  String text2;
  String text3;
  String text4;
  Icon icon;
  Icon icon2;

  Schedule(
      {required this.text,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.icon,
      required this.icon2});

  static List<Schedule> infoList = [
    Schedule(
        text: '07:00',
        text1: 'AM',
        text2: 'The Basic of Typography',
        text3: 'Room C1,faculity of Designers',
        text4: 'Gaberial Sutton',
        icon: Icon(Icons.location_on_outlined),
        icon2: Icon(Icons.account_circle_rounded)),
    Schedule(
        text: '09:00',
        text1: 'AM',
        text2: 'The Basic of Trignometry',
        text3: 'Room C3,faculity of Mathmatices',
        text4: 'Mechelecan Marian',
        icon: Icon(Icons.location_on_outlined),
        icon2: Icon(Icons.account_circle_rounded))
  ];
}

class Schedule2 {
  String text;
  String text1;
  bool iconcolor = false;
  bool containercolor = false;

  Schedule2(
      {required this.text,
      required this.text1,
      required this.iconcolor,
      required this.containercolor});

  static List<Schedule2> infoList2 = [
    Schedule2(
        text: '3 days left',
        text1: 'The basic of Typography',
        iconcolor: false,
        containercolor: false),
    Schedule2(
        text: '5 days left',
        text1: 'The basic of Trignometry',
        iconcolor: true,
        containercolor: true),
    Schedule2(
        text: '10 minutes ago',
        text1: 'The basic of EconomySystem',
        iconcolor: false,
        containercolor: false),
  ];
}
