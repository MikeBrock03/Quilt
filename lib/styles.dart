// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle navBarQuiltName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 17,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle currentBalance = TextStyle(
    color: quiltBlue,
    fontSize: 50,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle currentBalanceSubtitle = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle nameSubtitle = TextStyle(
    color: Color.fromRGBO(83, 83, 83, 1),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle CreateNew = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 45,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle LargeInput = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle GroupNameCreation = TextStyle(
    color: Color.fromRGBO(89, 171, 246, 1),
    fontSize: 48,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle CreationDollarSign = TextStyle(
    color: Color.fromRGBO(89, 171, 246, 1),
    fontSize: 48,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle CreationTitle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 48,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle CreationSubtitle = TextStyle(
    color: Color.fromRGBO(83, 83, 83, 1),
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle groupTypeTitle = TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle creation = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 48,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle groupTypeSubtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle LargeInputPlaceholder = TextStyle(
    color: Colors.grey,
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w200,
  );

  static const TextStyle cardTitle = TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle History = TextStyle(
    color: Colors.black,
    fontSize: 38,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ChooseQuiltTitle = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle cardButtonText = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle transactionHeading = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.8),
      fontSize: 19,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  static const TextStyle transactionDeduct = TextStyle(
      color: Colors.red,
      fontSize: 19,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300);

  static const TextStyle transactionAdd = TextStyle(
      color: Colors.blue,
      fontSize: 19,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300);

  static const TextStyle transactionSubhead = TextStyle(
      color: Color.fromRGBO(82, 82, 82, 1),
      fontSize: 12,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  static const Color backgroundYellow = Color.fromRGBO(255, 247, 234, 1);

  static const Color quiltBlue = Color.fromRGBO(89, 171, 246, 1);

  static const Color quiltYellow = Color.fromRGBO(255, 251, 228, 1);

  static const Color quiltRed = Color.fromRGBO(224, 128, 54, 1);

  static const Color productRowDivider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);
}
