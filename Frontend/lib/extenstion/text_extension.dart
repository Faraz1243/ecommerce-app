

import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension TextWidget on String {
  introTitleText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color:  context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w500, fontSize: 20,fontFamily: 'Switzer-Regular'),
      textAlign: TextAlign.center,
    );
  }

  getText() {
    return Text(
      this,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
      textAlign: TextAlign.center,
    );
  }

  TitelText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w600, fontSize: 32),
      textAlign: TextAlign.center,
    );
  }

  SubTitelText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 16),
      textAlign: TextAlign.center,
    );
  }

  nameText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w400, fontSize: 16),
      textAlign: TextAlign.center,
    );
  }

  TegText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w400, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }

  TegSubText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }

  homePageText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w600, fontSize: 16),
      textAlign: TextAlign.center,
    );
  }

  pageViewtext() {
    return Text(
      this,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
      textAlign: TextAlign.center,
    );
  }

  pageViewSubText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xffCBD5DA), fontWeight: FontWeight.w400, fontSize: 13),
      textAlign: TextAlign.center,
    );
  }

  pageViewButtonText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xffCBD5DA), fontWeight: FontWeight.w400, fontSize: 13),
      textAlign: TextAlign.center,
    );
  }

  priceText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xffF2A666), fontWeight: FontWeight.w400, fontSize: 13),
      textAlign: TextAlign.center,
    );
  }

    pricechairText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xffF2A666), fontWeight: FontWeight.w400, fontSize: 13),
      textAlign: TextAlign.center,
    );
  }

  pricechairText1() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xffF2A666), fontWeight: FontWeight.w500, fontSize: 16),
      textAlign: TextAlign.start,
    );
  }

  viewPageText(BuildContext context) {
    return Text(
      this,
      style:  TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w500, fontSize: 24),
      textAlign: TextAlign.start,
    );
  }

  reviewText(BuildContext context) {
    return Text(
      this,
      style: TextStyle(
          color: context.theme.textTheme
              .headline1?.color, fontWeight: FontWeight.w400, fontSize: 12),

    );
  }
  reviewsubText() {
    return Text(
      this,
      style: TextStyle(
          color: Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 12),

    );
  }
}
