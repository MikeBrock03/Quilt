import 'user_model.dart';

class UserList {
  static final _allUsers = <User>[
    User(
        userid: 1,
        quilts: {'Kauai': 200},
        firstName: 'Jeremy',
        lastName: 'Merritt',
        friends: [2, 3, 4, 5],
        added: false),
    User(
        userid: 2,
        quilts: {'Kauai': 200},
        firstName: 'Lucy',
        lastName: 'Duckworth',
        friends: [1, 3, 4, 5],
        added: false),
    User(
        userid: 3,
        quilts: {'Kauai': 200},
        firstName: 'Michael',
        lastName: 'Brockman',
        friends: [1, 2, 4, 5],
        added: false),
    User(
        userid: 4,
        quilts: {'Kauai': 200},
        firstName: 'Saif',
        lastName: 'Nasr',
        friends: [1, 2, 3, 5],
        added: false),
    User(
        userid: 5,
        quilts: {'Kauai': 200},
        firstName: 'Jason',
        lastName: 'Chen',
        friends: [1, 2, 3, 4],
        added: false),
  ];

  static List<User> loadallUsers() {
    return _allUsers;
  }
}
