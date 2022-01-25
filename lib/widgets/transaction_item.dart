import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:quilt_app/styles.dart';

import '../model/short_trans.dart';
import '../model/short_trans_list.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({
    required this.transaction,
    required this.lastItem,
    required this.subtitle,
    this.liked = false,
    Key? key,
  }) : super(key: key);

  final Transaction transaction;
  final String subtitle;
  final bool lastItem;
  late bool liked;

  @override
  Widget build(BuildContext context) {
    String userid = transaction.userid.toString();

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
          height: subtitle == '' ? 100 : 130,
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
                    borderRadius: userid == '0'
                        ? BorderRadius.circular(0)
                        : BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/users/user_$userid.png',
                      fit: BoxFit.cover,
                      width: 25,
                      height: 20,
                    )),
              ),
              Expanded(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 0)),
                        Text(
                          transaction.name,
                          style: Styles.transactionHeading,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '2d',
                            style: Styles.currentBalanceSubtitle,
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: subtitle == "" ? 0 : 8),
                            child: subtitle == ""
                                ? null
                                : Text(subtitle, style: Styles.nameSubtitle)),
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(CupertinoIcons.heart,
                                color: Colors.black, size: 20),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Icon(CupertinoIcons.bubble_left,
                                color: Colors.black, size: 20)
                          ],
                        )),
                      ],
                    ),
                    Expanded(
                        child: Align(
                      alignment: FractionalOffset.topRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 0)),
                          Text(
                            transaction.category == Category.add
                                ? '+' + transaction.amount.toString()
                                : '-' + transaction.amount.toString(),
                            style: transaction.category == Category.add
                                ? Styles.transactionAdd
                                : Styles.transactionDeduct,
                          ),
                          Expanded(
                            child: Align(
                              alignment: FractionalOffset.centerRight,
                              child: Icon(
                                CupertinoIcons.chevron_right,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ]),
            onPressed: null,
          ),
        ));
    return row;
  }
}
