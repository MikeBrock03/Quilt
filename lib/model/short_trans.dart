import 'package:jiffy/jiffy.dart';

enum Category { add, expense }

class Transaction {
  Transaction(
      {required this.category,
      required this.id,
      required this.amount,
      required this.name,
      required this.date,
      required this.userid,
      this.likes = 0,
      this.comments = 0,
      this.subtitle = ''});

  final Category category;
  final int userid;
  final int id;
  final double amount;
  final String name;
  final String date;
  final String subtitle;
  final int likes;
  final int comments;

  String get userImage => 'user_$userid.png';
  String get assetPackage => 'assets/packages/user_images';

  @override
  String toString() => '$name (id=$id)';
}
