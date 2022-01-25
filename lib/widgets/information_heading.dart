import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';
import '../styles.dart';

class InformationHeading extends StatefulWidget {
  const InformationHeading({
    Key? key,
  }) : super(key: key);

  static String tab = 'history';

  @override
  _InformationHeadingState createState() {
    return _InformationHeadingState();
  }
}

class _InformationHeadingState extends State<InformationHeading> {
  var tab = InformationHeading.tab;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(padding: EdgeInsets.only(left: 20)),
      Container(
        padding: EdgeInsets.only(bottom: 13),
        child: Text(
          'Kauai\'s',
        ),
      ),
      Padding(padding: EdgeInsets.only(left: 10)),
      SizedBox(
        width: 162,
        child: tab == 'history'
            ? Text(
                'History',
                style: Styles.History,
              )
            : Image.asset(
                'assets/images/Logo_Quilt.png',
                height: 45,
                alignment: Alignment.centerLeft,
              ),
      ),
      CupertinoSegmentedControl<String>(
        borderColor: Styles.backgroundYellow,
        unselectedColor: Styles.backgroundYellow,
        selectedColor: Styles.backgroundYellow,
        children: {
          'history': Container(
              width: 55,
              height: 42,
              decoration: BoxDecoration(
                  color: tab == 'history' ? Styles.quiltBlue : Colors.white,
                  border: Border.all(
                    color: Styles.backgroundYellow,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )),
              padding: EdgeInsets.all(8),
              child: tab == 'history'
                  ? Image.asset(
                      'assets/images/History_Selected.png',
                    )
                  : Image.asset('assets/images/History_Deselected.png')),
          'quilt': Container(
              width: 55,
              height: 42,
              decoration: BoxDecoration(
                  color: tab == 'quilt' ? Styles.quiltBlue : Colors.white,
                  border: Border.all(
                    color: Styles.backgroundYellow,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              padding: EdgeInsets.all(8),
              child: tab == 'quilt'
                  ? Image.asset('assets/images/Quilt_Selected.png')
                  : Image.asset('assets/images/Quilt_Deselected.png')),
        },
        onValueChanged: (String value) {
          setState(() {
            tab = value;
          });
        },
      )
    ]);
  }
}
