import 'package:flutter/material.dart';
import 'package:task/Screens/customShapeContainer.dart';
import 'package:task/Screens/messages.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent:
          "Of course. Are you interested in month-to-month or long term?",
      messageType: "sender"),
  ChatMessage(
    messageContent:
        "Hi. Could you tell me more about your subscription options?",
    messageType: "receiver",
  ),
  ChatMessage(
      messageContent:
          "Of course. Are you interested in month-to-month or long term?",
      messageType: "sender"),
  ChatMessage(
    messageContent:
        "Hi. Could you tell me more about your subscription options?",
    messageType: "receiver",
  ),
  ChatMessage(
      messageContent:
          "Of course. Are you interested in month-to-month or long term?",
      messageType: "sender"),
  ChatMessage(
      messageContent:
          "Of course. Are you interested in month-to-month or long term?",
      messageType: "sender"),
];

class _ScreenTwoState extends State<ScreenTwo> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.04),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 200),
                painter: CustomShapePainter(),
              ),
            ),
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    messages[index].messageType == "sender"
                        ? SizedBox()
                        : Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/pro.jpg'),
                                  height: 30,
                                  width: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lsla",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        '1m ago',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 35, right: 20, top: 10, bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Container(
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2),
                                blurRadius: 3.0,
                              ),
                            ],
                            color: (messages[index].messageType == "receiver"
                                ? Colors.grey.shade200
                                : Colors.blue),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            messages[index].messageContent,
                            style: TextStyle(
                                color: messages[index].messageType == "sender"
                                    ? Colors.white
                                    : Colors.black),
                            // style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
