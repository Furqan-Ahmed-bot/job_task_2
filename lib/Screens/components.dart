import 'package:flutter/material.dart';

Color primaryColor = Color.fromRGBO(33, 150, 243, 1);

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: Colors.blue,
            inactiveThumbColor: Colors.grey[300],
            inactiveTrackColor: Colors.grey,
          )),
      Text(
        '$textValue',
        style: TextStyle(fontSize: 20),
      )
    ]);
  }
}
