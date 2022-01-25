import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/quilt_custom_icons.dart';
import 'package:quilt_app/widgets/quilt_custom_icons.dart';
import 'package:quilt_app/styles.dart';
import 'pages/quilt_tab.dart';
import 'pages/community_tab.dart';
import 'pages/profile_tab.dart';

class QuiltApp extends StatelessWidget {
  const QuiltApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Only vertical orientation
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: CupertinoThemeData(
          brightness: Brightness.light,
          barBackgroundColor: Styles.backgroundYellow,
          scaffoldBackgroundColor: Styles.backgroundYellow),
      home: QuiltHomePage(),
    );
  }
}

class QuiltHomePage extends StatelessWidget {
  const QuiltHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuiltTab();
  }
}
