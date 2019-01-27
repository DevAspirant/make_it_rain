/* you will learn
 * using Expaneded widget
 * */
import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      moneyCounter = moneyCounter + 100;
    });
  }

  void _resetTheMoney() {
    setState(() {
      moneyCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Make it Rain"),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
          new Center(
          child: new Text(
            "Get Rich",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 29.9),
          ),
        ),
        /* new Widget */
        new Expanded(
            child: Center(
              child: new Text(
                '\$$moneyCounter',
                style: TextStyle(
                    color: moneyCounter > 2000 ? Colors.blueAccent : Colors.red,
                    fontSize: 46.9,
                    fontWeight: FontWeight.w800),
              ),
            )),
        /* new Expaneded widget */
        new Expanded(
            child: Center(
              child: new FlatButton(
                  textColor: Colors.white70,
                  color: Colors.lightGreen,
                  onPressed: _rainMoney,
                  child: Text(
                    "Let it rain!",
                    style: TextStyle(fontSize: 19.9),
                  )),
            )),
        new Expanded(
            child: Center(
              child: new FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  onPressed: _resetTheMoney,
                  child: Text(
                      "Reset The value")),
        ))
    ],),)
    ,
    );
  }
}
