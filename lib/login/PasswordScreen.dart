import 'package:currency/RateCurrency/CurrencyRateScreen.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PasswordScreen extends StatefulWidget {
  static const String routeName = 'password';

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyThemeData.backgroundColor,
      body: Container(
        height: SizeConfig.safeBlockVertical! * 100, //10 for example
        width: SizeConfig.safeBlockHorizontal! * 100,
        child: ListView(children: [
          //LOGO
          Container(
              height: SizeConfig.safeBlockVertical! * 20,
              width: SizeConfig.safeBlockHorizontal! * 30,
              padding: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical! * 5.0,
              ),
              child: Center(
                  child: Image.asset(
                      'assets/images/Icon ionic-md-radio-button-on.png'))),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical! * 2.0,
                  )),
                  Text(
                    'Create Password',
                    style: TextStyle(fontSize: 30, color: MyThemeData.white),
                  ),
                  Padding(
                      padding: EdgeInsets.all(
                    SizeConfig.safeBlockVertical! * 3.0,
                  )),
                  Container(
                      height: SizeConfig.safeBlockVertical! * 15,
                      width: SizeConfig.safeBlockHorizontal! * 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New password (min 8 chars)',
                            style: TextStyle(
                                fontSize: 15, color: MyThemeData.white),
                          ),
                          TextFormField(
                            obscureText: isHiddenPassword,
                            style: TextStyle(color: MyThemeData.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyThemeData.white, width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyThemeData.white, width: 2.0),
                              ),
                              suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  isHiddenPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  semanticLabel: isHiddenPassword
                                      ? 'hide password'
                                      : 'show password',
                                  color: MyThemeData.white,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: SizeConfig.safeBlockVertical! * 20, //10 for example
                    width: SizeConfig.safeBlockHorizontal! * 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'confirm password',
                          style:
                              TextStyle(fontSize: 15, color: MyThemeData.white),
                        ),
                        TextFormField(
                          obscureText: isHiddenPassword,
                          style: TextStyle(color: MyThemeData.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.white, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.white, width: 2.0),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                          top: SizeConfig.safeBlockVertical! * 3.0,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Enable Touch ID at Login',
                              style: TextStyle(
                                  fontSize: 15, color: MyThemeData.white),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FlutterSwitch(
                                    value: isSwitched,
                                    activeColor: MyThemeData.green,
                                    onToggle: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    },
                                  ),
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical! * 3.0,
                  )),
                  Container(
                    height: SizeConfig.safeBlockVertical! * 10, //10 for example
                    width: SizeConfig.safeBlockHorizontal! * 80,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: MyThemeData.green),
                      onPressed: onClick,
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          color: MyThemeData.white,
                          fontSize: SizeConfig.safeBlockVertical! * 4.0,
                        ),
                      ),
                    ),
                  ),
                  //10 for example)))),
                  Padding(
                      padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical! * 3.0,
                  )),
                  Container(
                    height: SizeConfig.safeBlockVertical! * 10, //10 for example
                    width: SizeConfig.safeBlockHorizontal! * 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Image.asset('assets/images/google.png'),
                            onPressed: onClick),
                        IconButton(
                            icon: Image.asset('assets/images/facebook.png'),
                            onPressed: onClick),
                        IconButton(
                            icon: Image.asset('assets/images/twitter.png'),
                            onPressed: onClick),
                      ],
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }

  bool isHiddenPassword = true;
  bool isSwitched = false;

  void onClick() async {
    Navigator.pushReplacementNamed(context, CurrencyRateScreen.routeName);
  }

  void toggleSwitch(bool value) {
    isSwitched = !isSwitched;
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
