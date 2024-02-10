import 'package:flutter/material.dart';

Widget exercise({
  required String exercise,
  required String subtitle,
  required IconData icon,
  required Color iconColor,
}) =>
    Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(16),
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 1.0, offset: Offset(1, 1))
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: iconColor, borderRadius: BorderRadius.circular(12)),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.blue[100]),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
