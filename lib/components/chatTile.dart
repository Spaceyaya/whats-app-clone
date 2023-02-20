import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ChatTile(
    String imgeUrl, String UserName, String date, String msg, bool seen) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imgeUrl),
            radius: 28.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    SizedBox(height: 3.0),
                    Expanded(
                        child: Text(
                      UserName,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    )),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        UserName,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                    if (seen)
                      Icon(
                        Icons.check_circle,
                        size: 17.0,
                        color: Colors.green,
                      ),
                    if (!seen)
                      Icon(
                        Icons.check_circle_outline,
                        size: 17.0,
                        color: Colors.grey,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
