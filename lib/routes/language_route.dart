import 'package:flutter/material.dart';
import 'package:flutter_github/l10n/localization_intl.dart';

class LanguageRoute extends StatefulWidget {
  @override
  _LanguageRouteState createState() => _LanguageRouteState();
}

class _LanguageRouteState extends State<LanguageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GmLocalizations.of(context).language),
      ),
    );
  }
}
