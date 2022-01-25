import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quilt_app/pages/new_quilt/new_money.dart';
import 'package:quilt_app/widgets/information_heading.dart';
import 'package:quilt_app/styles.dart';

class NewName extends StatefulWidget {
  static String name = '';

  const NewName({Key? key}) : super(key: key);

  @override
  NewNameState createState() {
    return NewNameState();
  }
}

class NewNameState extends State<NewName> {
  static String name = name;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Column(
        children: [
          CupertinoNavigationBar(
              padding: EdgeInsetsDirectional.zero,
              border: null,
              leading: CupertinoButton(
                padding: EdgeInsets.all(0),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Create a new',
                style: Styles.CreateNew,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                  width: 125,
                  height: 110,
                  child: Image.asset(
                    'assets/images/Logo_Quilt.png',
                    fit: BoxFit.contain,
                  )),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, -1),
                      )
                    ]),
                child: CupertinoTextField(
                    placeholderStyle: Styles.LargeInputPlaceholder,
                    style: Styles.LargeInput,
                    textAlign: TextAlign.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(18))),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    placeholder: 'Group name',
                    onChanged: (value) {
                      _setName(value);
                    }),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10),
                height: 200,
                width: 200,
                child: Image.asset('assets/images/Quilt_Spool_Pink.png',
                    fit: BoxFit.contain),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Text(
                  'You will be the host, with the ability to change group settings & edit members.',
                  textAlign: TextAlign.center,
                  style: Styles.nameSubtitle,
                ),
              ),
            ],
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: 50,
                  height: 50,
                  child: CupertinoButton(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    disabledColor: Colors.blue,
                    color: Colors.blue,
                    child: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () => Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return NewMoney();
                    })),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }

  void _setName(String value) {
    setState(() {
      name = value;
      NewName.name = value;
      NewName.name = name;
    });
  }
}
