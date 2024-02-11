import 'package:flutter/material.dart';

Widget categorybox(
        {required String categoryname,
        required Color start,
        required Color end}) =>
    Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [start, end],
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        categoryname,
        style: TextStyle(color: Colors.white),
      )),
    );
