import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quilt_app/pages/new_quilt/new_name.dart';
import 'package:quilt_app/widgets/information_heading.dart';
import 'package:quilt_app/styles.dart';
import '../widgets/main_buttons.dart';
import '../model/app_state_model.dart';
import '../widgets/transaction_item.dart';
import 'new_quilt/new_name.dart';

class QuiltTab extends StatefulWidget {
  const QuiltTab({Key? key}) : super(key: key);

  @override
  _QuiltTabState createState() {
    return _QuiltTabState();
  }
}

class _QuiltTabState extends State<QuiltTab> {
  @override
  var tab = InformationHeading.tab;

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Consumer<AppStateModel>(builder: (context, model, child) {
      var transactions = model.getTransactions();
      return CustomScrollView(
        semanticChildCount: transactions.length,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: CupertinoNavigationBar(
              padding: EdgeInsetsDirectional.zero,
              backgroundColor: Styles.backgroundYellow,
              border: null,
              middle: CupertinoButton(
                color: Styles.backgroundYellow,
                disabledColor: Styles.backgroundYellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kauai',
                      style: Styles.navBarQuiltName,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      color: Colors.black,
                      size: 22,
                    )
                  ],
                ),
                onPressed: () {
                  showPopup();
                },
              ),
              leading: CupertinoButton(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(CupertinoIcons.search, size: 24),
                  onPressed: () => Navigator.of(context)
                          .push(CupertinoPageRoute(builder: (context) {
                        return NewName();
                      }))),
              trailing: CupertinoButton(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(CupertinoIcons.add, size: 24),
                  onPressed: () => Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context) {
                          return NewName();
                        }),
                      )),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 12)),
                  const Text(
                    '\$1000',
                    style: Styles.currentBalance,
                  ),
                  const Text(
                    'current balance',
                    style: Styles.currentBalanceSubtitle,
                  )
                ]),
          ),
          SliverSafeArea(
            top: false,
            minimum: EdgeInsets.only(top: 22),
            sliver: SliverToBoxAdapter(
              child: MainButtons(),
            ),
          ),
          SliverToBoxAdapter(
            child: InformationHeading(),
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                if (index < transactions.length) {
                  return TransactionItem(
                    subtitle: transactions[index].subtitle,
                    transaction: transactions[index],
                    lastItem: index == transactions.length - 1,
                  );
                }
                return null;
              }),
            ),
          ),
        ],
      );
    }));
  }

  void showPopup() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return CupertinoPopupSurface(
            child: Container(
              padding: EdgeInsetsDirectional.all(20),
              color: CupertinoColors.white,
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width * .96,
              height: MediaQuery.of(context).copyWith().size.height * 0.35,
              child: Column(children: [
                Text(
                  'Quilts',
                  style: Styles.ChooseQuiltTitle,
                ),
                Divider(),
              ]),
            ),
            isSurfacePainted: true,
          );
        });
  }
}
