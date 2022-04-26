import 'package:currency/RateCurrency/CurrencyRateScreen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'login/PasswordScreen.dart';
class MyThemeData {
  static var backgroundColor = Color.fromRGBO(41, 51, 78, 1.0);
  static var white = Color.fromRGBO(255, 255, 255, 1.0);
  static var green = Color.fromRGBO(106, 215, 158, 1.0);
  static var lightwhite = Color.fromRGBO(255, 255, 255, 0.7019607843137254);


}
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth!/100;
    blockSizeVertical = screenHeight!/100;
    _safeAreaHorizontal = _mediaQueryData!.padding.left +
        _mediaQueryData!.padding.right;
    _safeAreaVertical = _mediaQueryData!.padding.top +
        _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!)/100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical!)/100;
  }
}
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color.fromARGB(255, 31, 37, 61),
        accentColor: Color.fromARGB(255, 255, 255, 255),
      ),
      routes: {
        PasswordScreen.routeName: (context) => PasswordScreen(),
        CurrencyRateScreen.routeName: (context) => CurrencyRateScreen(),

      },
      initialRoute:PasswordScreen.routeName,
    );
  }
}
