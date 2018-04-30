import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'backdrop.dart';
import 'home.dart';
import 'login.dart';
import 'notched_corner_border.dart';
import 'supplemental/theming.dart';

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      home: Backdrop(
        currentCategory: null,
        frontPanel: HomePage(),
        backPanel: Container(color: kShrinePink50),
        frontTitle: Text('Shrine'),
        backTitle: Text('Menu'),
      ),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _buildShrineTheme(),
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == '/login') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => LoginPage(),
        fullscreenDialog: true,
      );
    }

    return null;
  }
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: kShrineBrown900);
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
//    accentColor: kShrineBrown900,
//    primaryColor: kShrinePink100,
//    buttonColor: Colors.red,
//    scaffoldBackgroundColor: kShrineBackgroundWhite,
//    cardColor: kShrineBackgroundWhite,
//    textSelectionColor: kShrinePink100,
//    errorColor: kShrineErrorRed,
//    buttonTheme: ButtonThemeData(
//      textTheme: ButtonTextTheme.accent,
//    ),
//    primaryIconTheme: base.iconTheme.copyWith(color: kShrineBrown900),
// TODO text fields demo
//    inputDecorationTheme: new InputDecorationTheme(
//      border: new NotchedCornerBorder(),
//    ),
//    textTheme: _buildShrineTextTheme(base.textTheme),
//    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
//    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
//    iconTheme: _customIconTheme(base.iconTheme),
      );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}
