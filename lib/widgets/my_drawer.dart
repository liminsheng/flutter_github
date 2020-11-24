import 'package:flutter/material.dart';
import 'package:flutter_github/l10n/localization_intl.dart';
import 'package:flutter_github/states/user_model.dart';
import 'package:flutter_github/widgets/gm_avatar.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_buildHeader(), Expanded(child: _buildMenus())],
          )),
    );
  }

  Widget _buildHeader() {
    return Consumer<UserModel>(
        builder: (BuildContext context, UserModel value, Widget child) {
      return GestureDetector(
        onTap: () {
          if (!value.isLogin) Navigator.of(context).pushNamed("login");
        },
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(top: 40, bottom: 20),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ClipOval(
                  child: value.isLogin
                      ? gmAvatar(value.user.avatar_url)
                      : Image.asset('imgs/avatar-default.jpg', width: 80),
                ),
              ),
              Text(
                value.isLogin
                    ? value.user.login
                    : GmLocalizations.of(context).login,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _buildMenus() {
    return Consumer<UserModel>(
        builder: (BuildContext context, UserModel value, Widget child) {
      var gm = GmLocalizations.of(context);
      return ListView(
        children: [
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text(gm.theme),
            onTap: () => Navigator.pushNamed(context, 'themes'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(gm.language),
            onTap: () => Navigator.pushNamed(context, 'language'),
          ),
          if (value.isLogin)
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text(gm.logout),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(gm.logoutTip),
                          actions: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(gm.cancel)),
                            FlatButton(
                                onPressed: () {
                                  value.user = null;
                                  Navigator.pop(context);
                                },
                                child: Text(gm.yes)),
                          ],
                        );
                      });
                }),
        ],
      );
    });
  }
}
