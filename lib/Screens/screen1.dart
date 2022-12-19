import 'package:flutter/material.dart';
import 'package:task/Screens/components.dart';
import 'package:task/Screens/screen2.dart';

class ScreenOne extends StatefulWidget {

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  var size, height, width;
  String? dropdownValue = 'Every week';
  String? dropdownValue2 = '1';
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.blue,
        elevation: 4,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.blue,
          ),
        ),
        title: Center(
          child: Text(
            "Pickup Date",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.04),
            child: Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("When would you like your pickup?"),
                  Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Cal_date('Fri', '25 Jun', 'Yesterday', Colors.grey),
                Cal_date('Sat', '26 Jun', 'Today', Colors.blue),
                Cal_date('Sun', '27 Jun', 'Tomorrow', Colors.grey[300]),
                Cal_date('Sun', '29 Jun', 'Blockday', Colors.red),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: Text("Available time slots"),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.91,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4,
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "7am - 9pm",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "10am - 12pm",
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "1pm - 2pm",
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "4pm - 6pm",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "8pm - 10pm",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.06,
                vertical: height * 0.002,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 3.0,
                      ),
                    ]),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  color: Colors.white,
                  height: 50,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Repeat Pickup",
                      ),
                      Icon(
                        Icons.toggle_on_rounded,
                        color: Colors.blue,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.5),
              child: Text(
                "How Often Repeat?",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 3.0,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.3, vertical: height * 0.011),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    // isDense reduce the button height
                    isDense: true,
                    icon: const Icon(Icons.arrow_downward, color: Colors.grey),
                    elevation: 16,
                    alignment: AlignmentDirectional.center,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    dropdownColor: Colors.white,
                    items: <String>[
                      'Every week',
                      'Every day',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.5),
              child: Text(
                "How Many times?",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 3.0,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.39, vertical: height * 0.011),
                  child: DropdownButton<String>(
                    value: dropdownValue2,
                    // isDense reduce the button height
                    isDense: true,
                    icon: const Icon(Icons.arrow_downward, color: Colors.grey),
                    elevation: 16,
                    alignment: AlignmentDirectional.center,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    dropdownColor: Colors.white,
                    items: <String>[
                      '1',
                      '2',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.13,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                        blurRadius: 3.0,
                      )
                    ]),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenTwo()));
                  },
                  minWidth: double.infinity,
                  color: Colors.blue,
                  height: 50,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Cal_date(txt, date, day, clr) {
    return Container(
      // height: height * 0.1,
      width: width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(3),
                ),
                color: clr),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                txt,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(date),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 7),
            child: Text(day),
          ),
        ],
      ),
    );
  }
}
