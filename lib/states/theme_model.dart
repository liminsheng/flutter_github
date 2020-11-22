import 'package:flutter/material.dart';
import 'package:flutter_github/common/global.dart';
import 'package:flutter_github/states/profile_change_notifier.dart';

///主题状态
class ThemeModel extends ProfileChangeNotifier {
  //获取当前主题，如果没啥子主题，则默认使用蓝色主题
  ColorSwatch get theme =>
      Global.themes.firstWhere((element) => element.value == profile.theme,
          orElse: () => Colors.blue);

  //主题改变后，通知其依赖项，新主题会立即生效
  set theme(ColorSwatch color) {
    if (color != theme) {
      profile.theme = color[500].value;
      notifyListeners();
    }
  }
}
