import 'package:flutter/material.dart';
import 'package:flutter_github/common/global.dart';
import 'package:flutter_github/models/index.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  Profile get profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知以来的Widget更新
  }
}
