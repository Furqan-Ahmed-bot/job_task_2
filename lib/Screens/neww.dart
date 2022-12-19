// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';

// class ChatsScreen extends StatefulWidget {
//   const ChatsScreen({Key? key}) : super(key: key);

//   @override
//   State<ChatsScreen> createState() => _ChatsScreenState();
// }

// int countscreen = 0;

// class _ChatsScreenState extends State<ChatsScreen> {
//   int _selectIndex = 0;
//   Timer? timer;
  

//   @override
//   void dispose() {
//     super.dispose();
//     timer!.cancel();
//   }

//   List<String> msgs = ['message 1, hey im xyz ','message 2, hey im abc', 'message 4, hey im xyz', 'message 5, hey im xyz' ];

//   @override
//   Widget build(BuildContext context) {
//     DateTime pre_backpress = DateTime.now();
//     return Scaffold(
//       body: WillPopScope(
//         onWillPop: () async {
//           final timegap = DateTime.now().difference(pre_backpress);
//           final cantExit = timegap >= Duration(seconds: 2);
//           pre_backpress = DateTime.now();
//           if (cantExit) {
//             //show snackbar
//             showToast('Press Back button again to Exit');
//             return false;
//           } else {
//             exit(0);
//           }
//         },
//         child:  ListView.builder(
//                     itemCount: msgs.length,
//                     itemBuilder: (context, index) {
//                       // print(object)
//                       return ChatCard(
//                         press: () {
//                           countscreen = 0;
//                           timer!.cancel();
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MessagesScreen(
//                                         username: data['Response']['Records']
//                                             [index]['ChatCreatedUserName'],
//                                         data: data['Response']['Records']
//                                             [index],
//                                         index: index,
//                                       )));
//                         },
//                         chat: Chat(
//                             name: data['Response']['Records'][index]
//                                 ['ChatCreatedUserName'],
//                             lastMessage: data['Response']['Records'][index]
//                                         ['Messages'] ==
//                                     null
//                                 ? ''
//                                 : data['Response']['Records'][index]['Messages']
//                                         [data['Response']['Records'][index]['Messages'].length - 1]
//                                     ['Message'],
//                             image: data['Response']['Records'][index]
//                                         ['ProfilePhotos'] ==
//                                     null
//                                 ? 'https://chatinuni.com/assets/image/profile-place-holder.jpg'
//                                 : data['Response']['Records'][index]
//                                     ['ProfilePhotos'][0]['FileURL'],
//                             time: '',
//                             // data['Response']['Records'][index]
//                             //     ['LastMessageDate'],
//                             isActive: false),
//                       );
//                     }),
//       ),
//     );
//   }
// }
