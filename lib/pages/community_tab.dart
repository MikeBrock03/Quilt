import 'package:flutter/cupertino.dart';

class CommunityTab extends StatefulWidget {
  const CommunityTab({Key? key}) : super(key: key);

  @override
  _CommunityTabState createState() {
    return _CommunityTabState();
  }
}

class _CommunityTabState extends State<CommunityTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(largeTitle: Text('Community')),
      ],
    );
  }
}
