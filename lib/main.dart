import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quilt_app/model/view_user_model.dart';
import 'package:quilt_app/pages/new_quilt/add_members.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppStateModel>(
          create: (_) => AppStateModel()..loadTransactions(),
        ),
        ChangeNotifierProvider<ViewUserModel>(
          create: (_) => ViewUserModel()..loadUsers(),
        ),
      ],
      child: const QuiltApp(),
    ),
  );
}
