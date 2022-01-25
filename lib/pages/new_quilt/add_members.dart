import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quilt_app/model/app_state_model.dart';
import 'package:quilt_app/model/view_user_model.dart';
import 'package:quilt_app/pages/new_quilt/new_name.dart';
import 'package:quilt_app/widgets/information_heading.dart';
import 'package:quilt_app/styles.dart';
import 'new_money.dart';
import '../../model/user_model.dart';
import '../../model/user_list.dart';
import 'widgets/friends_list.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({Key? key}) : super(key: key);

  @override
  _AddMembersState createState() {
    return _AddMembersState();
  }
}

class _AddMembersState extends State<AddMembers> {
  @override
  var type = NewMoney.equal;
  var budget = NewMoney.budget;
  static int minimum = 0;
  var groupName = NewName.name;
  static bool equal = true;

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<ViewUserModel>(builder: (context, model, child) {
        var users = model.getUsers();
        return CustomScrollView(
          semanticChildCount: users.length,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: CupertinoNavigationBar(
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Add members',
                  style: Styles.CreateNew,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: CupertinoTextField(
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.center,
                    maxLength: 25,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    placeholderStyle: Styles.currentBalanceSubtitle,
                    style: Styles.currentBalanceSubtitle,
                    textAlign: TextAlign.start,
                    placeholder: 'Name, @username, phone, or email',
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    padding: EdgeInsets.fromLTRB(12, 10, 10, 10),
                  ),
                ),
              ),
            ),
            SliverSafeArea(
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index < users.length) {
                    return FriendItem(
                      user: users[index],
                      added: users[index].added,
                      lastItem: index == users.length - 1,
                    );
                  }
                  return null;
                }),
              ),
            ),
          ],
        );
      }),
    );
  }
}
