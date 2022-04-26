import 'package:currency/RateCurrency/ItemBox.dart';
import 'package:currency/main.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class CurrencyRateScreen extends StatefulWidget {
  static const String routeName = 'Rate';

  @override
  _CurrencyRateScreenState createState() => _CurrencyRateScreenState();
}

class _CurrencyRateScreenState extends State<CurrencyRateScreen> {
  String totalbalance = '1252.456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 64, 77, 102),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Icon feather-database.png'),
                label: 'Transaction'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
          ],
        ),
        appBar: AppBar(
          elevation: 1,
          shadowColor: MyThemeData.white,
          backgroundColor: MyThemeData.backgroundColor,
          leading: Icon(Icons.menu),
          actions: [
            Row(
              children: const [
                Text(
                  'oxDeAD  .  Beef',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 15,
                  child: Image(
                    image: AssetImage('assets/images/avatar.png'),
                  ),
                )
              ],
            )
          ],
        ),
        body: Container(
          color: MyThemeData.white,
          child: ListView( children: [Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * .3,
                    color: MyThemeData.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TOTAL BALANCE',
                            style: TextStyle(
                                fontSize: 10, color: MyThemeData.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                totalbalance,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              ElevatedButton.icon(
                                      onPressed: editbalance,
                                      icon: Icon(Icons.edit),
                                style: ElevatedButton.styleFrom(
                                    primary: MyThemeData.backgroundColor, //background color of button
                                    side: BorderSide(width:1, color:MyThemeData.lightwhite), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(30),)),
                                      label: Text(
                                        'edit',
                                        style: TextStyle(color: MyThemeData.lightwhite),
                                      ))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: SizeConfig.screenWidth! * 0.4,
                            height: SizeConfig.screenHeight! * 0.001,
                            color: MyThemeData.white,
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight! / 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'currency',
                                style: TextStyle(color: MyThemeData.lightwhite),
                              ),
                              Text(
                                'Make Changes',
                                style: TextStyle(color: MyThemeData.lightwhite),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! / 5,
                  ),
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                      top: 150,
                      child: ItemBox(
                          icon: Icons.euro,
                          text: 'Oxf1..do7d',
                          price: "12.456 EGP",
                          function: () {})),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! / 120,
              ),
              ItemBox(
                  icon: Icons.euro,
                  text: 'Oxf1..do7d',
                  price: "145.32 EUR",
                  function: () {}),
              ItemBox(
                  icon: Icons.euro,
                  text: 'Oxf1..do7d',
                  price: "3521.1 TYR",
                  function: () {}),
              ItemBox(
                  icon: Icons.add_circle_outline,
                  text: 'Add Currency',
                  price: "",
                  function: () {})
            ],
          ),
        ])));
  }

  editbalance() {
    String edit = '';
    showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
            content: TextFormField(
              style: TextStyle(color: MyThemeData.backgroundColor),
              onChanged: (newValue) {
                edit = newValue;
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyThemeData.backgroundColor, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyThemeData.backgroundColor, width: 2.0),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      totalbalance = edit;
                      Navigator.pop(context);
                    });
                  },
                  child: Text('done'))
            ],
          );
        });
  }
}
