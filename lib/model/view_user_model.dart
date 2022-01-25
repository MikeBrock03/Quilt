import 'package:flutter/foundation.dart' as foundation;
import 'package:quilt_app/model/user_list.dart';
import 'package:quilt_app/model/user_model.dart';

import 'short_trans.dart';
import 'short_trans_list.dart';
import 'quilt_model.dart';

class ViewUserModel extends foundation.ChangeNotifier {
  List<User> _availableUsers = [];

  void loadUsers() {
    _availableUsers = UserList.loadallUsers();
    notifyListeners();
  }

  List<User> getUsers() {
    return List.from(_availableUsers);
  }
}
