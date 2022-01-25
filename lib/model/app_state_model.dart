import 'package:flutter/foundation.dart' as foundation;
import 'package:quilt_app/model/user_list.dart';
import 'package:quilt_app/model/user_model.dart';

import 'short_trans.dart';
import 'short_trans_list.dart';
import 'quilt_model.dart';

class AppStateModel extends foundation.ChangeNotifier {
  List<Transaction> _availableTransactions = [];

  void loadTransactions() {
    _availableTransactions = ShortTransList.loadShortTransactions();
    notifyListeners();
  }

  List<Transaction> getTransactions() {
    return List.from(_availableTransactions);
  }
}
