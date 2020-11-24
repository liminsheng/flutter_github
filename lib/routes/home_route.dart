import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/common/git.dart';
import 'package:flutter_github/l10n/localization_intl.dart';
import 'package:flutter_github/models/index.dart';
import 'package:flutter_github/states/user_model.dart';
import 'package:flutter_github/widgets/my_drawer.dart';
import 'package:flutter_github/widgets/repo_item.dart';
import 'package:provider/provider.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GmLocalizations.of(context).home),
      ),
      body: _buildBody(),
      drawer: MyDrawer(),
    );
  }

  _buildBody() {
    var userModel = Provider.of<UserModel>(context);
    if (!userModel.isLogin) {
      return Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('login');
          },
          child: Text(GmLocalizations.of(context).login),
        ),
      );
    } else {
      return InfiniteListView<Repo>(
          onRetrieveData: (int page, List<Repo> items, bool refresh) async {
        var data = await Git(context).getRepos(
            refresh: refresh, queryParameters: {'page': page, 'page_size': 20});
        items.addAll(data);
        return data.length == 20;
      }, itemBuilder: (List<Repo> list, int index, BuildContext ctx) {
        return RepoItem(list[index]);
      });
    }
  }
}
