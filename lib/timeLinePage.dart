import 'package:flutter/material.dart';
import 'package:whatsapp/components/chatTile.dart';

import 'components/storyButtun.dart';

class WhatsAppClone extends StatefulWidget {
  const WhatsAppClone({Key? key}) : super(key: key);

  @override
  State<WhatsAppClone> createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  // Here to Add Main Color
  Color MainColor = Color(0xff177767);
  var containerRadius = Radius.circular(30.0);
  // here to add list of images
  List<String> imageUrl = [
    "assets/Images/Yaya.jpg",
    "assets/Images/Elmunni.jpg",
    "assets/Images/Almotzamer.jpg",
    "assets/Images/Eman.jpg",
    "assets/Images/Kahlawy.jpg",
    "assets/Images/KidsArea.jpg",
    "assets/Images/Zingy.jpg",
    "assets/Images/Leader.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('whatsApp Clone'),
        backgroundColor: MainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StoryBtn(imageUrl[0], 'Yahia Kh'),
                  StoryBtn(imageUrl[1], 'Munni'),
                  StoryBtn(imageUrl[2], 'Sadek'),
                  StoryBtn(imageUrl[3], 'Eman'),
                  StoryBtn(imageUrl[4], 'Kahlawy'),
                  StoryBtn(imageUrl[5], 'Kids'),
                  StoryBtn(imageUrl[6], 'Khairy'),
                  StoryBtn(imageUrl[7], "Leader"),
                ],
              ),
            ),
          ),
          // here to Add chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: ListView(
                  children: [
                    ChatTile(imageUrl[0], 'Yahia Khaled', '9Am', 'Msg', true),
                    ChatTile(imageUrl[1], 'Elmunni', '6Am', 'Msg', false),
                    ChatTile(imageUrl[2], 'Sadek', 'Yesterday', 'Msg', false),
                    ChatTile(imageUrl[3], 'Eman', 'Yesterday', 'Msg', true),
                    ChatTile(imageUrl[4], 'Kahlawy', 'San20', 'Msg', false),
                    ChatTile(imageUrl[5], 'Kids', 'San22', 'Msg', true),
                    ChatTile(imageUrl[6], 'Khairy', 'San23', 'Msg', true),
                    ChatTile(imageUrl[7], 'Leader', 'San25', 'Msg', true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
