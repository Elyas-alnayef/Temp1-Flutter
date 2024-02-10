import 'package:flutter/material.dart';

Widget emojeyface({required String emojey}) => Container(
    decoration: BoxDecoration(
        color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.all(12),
    child: Text(
      emojey,
      style: const TextStyle(fontSize: 20),
    ));
