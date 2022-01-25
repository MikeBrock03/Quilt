import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:quilt_app/styles.dart';
import '../../../model/user_model.dart';
import '../../../model/user_list.dart';

class FriendItem extends StatelessWidget {
  FriendItem({
    required this.user,
    required this.lastItem,
    this.added = false,
    Key? key,
  }) : super(key: key);

  final User user;
  final bool lastItem;
  late bool added;

  @override
  Widget build(BuildContext context) {
    String userid = user.userid.toString();

    final row = SafeArea(
        top: false,
        bottom: false,
        minimum: const EdgeInsets.only(
          left: 8,
          top: 8,
          bottom: 8,
          right: 8,
        ),
        child: Container(
          width: 400,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, -1),
                )
              ]),
          child: CupertinoButton(
            padding: const EdgeInsets.only(
              top: 15,
              right: 20,
              bottom: 10,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            color: Colors.white,
            disabledColor: Colors.white,
            alignment: Alignment.center,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 10,
              )),
              SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/users/user_$userid.png',
                      fit: BoxFit.cover,
                      width: 25,
                      height: 20,
                    )),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 0)),
                      Text(
                        user.firstName,
                        style: Styles.transactionHeading,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          '2d',
                          style: Styles.currentBalanceSubtitle,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.heart,
                              color: Colors.black, size: 20),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(CupertinoIcons.bubble_left,
                              color: Colors.black, size: 20)
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: FractionalOffset.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 0)),
                        Align(
                          alignment: FractionalOffset.centerRight,
                          child: Icon(
                            CupertinoIcons.chevron_right,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
            onPressed: null,
          ),
        ));
    return row;
  }
}
