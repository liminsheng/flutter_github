import 'package:flutter_github/models/user.dart';
import 'package:flutter_github/states/profile_change_notifier.dart';

///用户状态
class UserModel extends ProfileChangeNotifier {
  User get user => profile.user;

  //App是否登录（如果有用户信息，则证明登录过）
  bool get isLogin => user != null;

  //用户信息发生变化，更新用户信息并通知依赖它的子孙Widget更新
  set user(User user) {
    if (user?.login != profile.user?.login) {
      profile.lastLogin = profile.user?.login;
      profile.user = user;
      notifyListeners();
    }
  }
}
