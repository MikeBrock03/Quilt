import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';
import '../styles.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView(
        padding: const EdgeInsets.only(top: 5, left: 20, bottom: 25, right: 20),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 267,
            height: 200,
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
              padding: const EdgeInsets.all(10.0),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
              disabledColor: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Text(
                    'Add to Apple Pay and get card details.',
                    style: Styles.cardTitle,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Image.asset(
                    'assets/images/Quilt_Card_centered.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const SizedBox(
                    height: 39,
                    width: 131,
                    child: CupertinoButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.center,
                        disabledColor: Styles.quiltBlue,
                        color: Styles.quiltBlue,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Text('Use Kauai\'s Card',
                            style: Styles.cardButtonText),
                        onPressed: null),
                  ),
                ],
              ),
              onPressed: null,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 13)),
          Container(
            width: 267,
            height: 200,
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
            child: CupertinoButton(
              padding: const EdgeInsets.all(10.0),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
              disabledColor: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Text(
                    'Add to Apple Pay and get card details.',
                    style: Styles.cardTitle,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Image.asset(
                    'assets/images/Quilt_Card_centered.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const SizedBox(
                    height: 39,
                    width: 131,
                    child: CupertinoButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.center,
                        disabledColor: Styles.quiltBlue,
                        color: Styles.quiltBlue,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Text('Use Kauai\'s Card',
                            style: Styles.cardButtonText),
                        onPressed: null),
                  ),
                ],
              ),
              onPressed: null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            width: 267,
            height: 200,
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
            child: CupertinoButton(
              padding: const EdgeInsets.all(10.0),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
              disabledColor: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Text(
                    'Add to Apple Pay and get card details.',
                    style: Styles.cardTitle,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Image.asset(
                    'assets/images/Quilt_Card_centered.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    height: 39,
                    width: 131,
                    child: CupertinoButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.center,
                        disabledColor: Styles.quiltBlue,
                        color: Styles.quiltBlue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Text('Use Kauai\'s Card',
                            style: Styles.cardButtonText),
                        onPressed: null),
                  ),
                ],
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
