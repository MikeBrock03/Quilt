import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quilt_app/pages/new_quilt/add_members.dart';
import 'package:quilt_app/pages/new_quilt/new_name.dart';
import 'package:quilt_app/widgets/information_heading.dart';
import 'package:quilt_app/styles.dart';

class NewMoney extends StatefulWidget {
  const NewMoney({Key? key}) : super(key: key);

  static int budget = 0;
  static bool equal = true;

  @override
  NewMoneyState createState() {
    return NewMoneyState();
  }
}

class NewMoneyState extends State<NewMoney> {
  static int budget = 0;
  static int minimum = 0;
  var groupName = NewName.name;
  static bool equal = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
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
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              '$groupName\'s',
              style: Styles.GroupNameCreation,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Text('budget', style: Styles.CreationTitle),
          ),
          Padding(padding: EdgeInsets.only(top: 30, left: 10)),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                '\$',
                style: Styles.CreationDollarSign,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 10),
              child: Container(
                height: 90,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      )
                    ]),
                child: CupertinoTextField(
                  // WRITE SOMETHING TO HANDLE NON NUMBERS
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  maxLength: 10,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  placeholderStyle: Styles.LargeInputPlaceholder,
                  style: Styles.LargeInput,
                  textAlign: TextAlign.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18))),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  onChanged: (value) {
                    equal
                        ? budget = int.parse(value)
                        : minimum = int.parse(value);
                    setState(() {});
                  },
                ),
              ),
            ),
          ]),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '(budget in total)',
                style: Styles.nameSubtitle,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Text(
              'Distribution',
              style: Styles.CreationSubtitle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    width: 175,
                    height: 175,
                    child: Image.asset(
                      'assets/images/Equal_Distribution.png',
                    ),
                  ),
                  onPressed: () {
                    equal = true;
                    setState(() {});
                  }),
              CupertinoButton(
                  child: Container(
                    width: 150,
                    height: 150,
                    child:
                        Image.asset('assets/images/Unequal_Distribution.png'),
                  ),
                  onPressed: () {
                    equal = false;
                    setState(() {});
                  }),
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(equal ? 'Equal & Budgeted' : 'Minimum Payment',
                      style: Styles.groupTypeTitle)),
              Padding(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Text(
                    equal
                        ? 'All group members put the same amount into the pool. Works best for groups with set budgets.'
                        : 'To join a group, a minimum amount must be contributed. Works best for long-term groups.',
                    textAlign: TextAlign.center,
                    style: Styles.groupTypeSubtitle,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  'Funds split equally, but can be adjusted after the fact.',
                  style: Styles.groupTypeSubtitle,
                ),
              )
            ],
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
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
                  onPressed: () => Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) {
                      return AddMembers();
                    }),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }

  void _setBudget(int budget_value) {
    setState(() {
      budget = budget_value;
      NewMoney.budget = budget_value;
      NewMoney.budget = budget;
    });
  }

  void _setType(bool group_type) {
    setState(() {
      equal = group_type;
      NewMoney.equal = group_type;
      NewMoney.equal = equal;
    });
  }
}
