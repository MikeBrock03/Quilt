import 'package:jiffy/jiffy.dart';

class User {
  User({
    required this.userid,
    required this.quilts,
    required this.firstName,
    required this.lastName,
    required this.friends,
    this.added = false,
  });

  final int userid;
  final String firstName;
  final String lastName;
  final Map quilts;
  final List friends;
  bool added = false;

  String get userImage => 'user_$userid.png';
  String get assetPackage => 'assets/packages/user_images';

  @override
  String toString() => '$firstName $lastName (id=$userid)';
}
