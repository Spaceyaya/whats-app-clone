import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget StoryBtn(String imgUrl, String userName) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imgUrl),
            radius: 26.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            userName,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
