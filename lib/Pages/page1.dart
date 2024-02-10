// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Components/emojey.dart';
import '../Components/exercises_list.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: 'Any'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: Column(
        children: [
          // Start greeting row
          Padding(
            padding:
                const EdgeInsets.only(bottom: 24, left: 16, right: 16, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Elyas ",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '10 jan ,2024',
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ))
                  ],
                ),
                // end greeting row
                SizedBox(
                  height: 24,
                ),
                //start search bar
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[600]),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                //end  search bar
                SizedBox(
                  height: 24,
                ),
                //Strat how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How do you feel",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                //end how do you fell
                SizedBox(
                  height: 24,
                ),
                //emojies
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        emojeyface(emojey: '😊'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Good",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        emojeyface(emojey: '😎'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Wow",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        emojeyface(emojey: '😠'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Angry",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        emojeyface(emojey: '😫'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Mad",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //start exercises
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: Colors.grey[50]),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercises",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        exercise(
                            exercise: 'Markitting Skills',
                            icon: Icons.sell,
                            iconColor: Colors.blue,
                            subtitle: '15 exercises'),
                        exercise(
                            exercise: 'Speaking Skills',
                            icon: Icons.record_voice_over_rounded,
                            iconColor: Colors.red,
                            subtitle: '15 exercises'),
                        exercise(
                            exercise: 'Writing Skills',
                            icon: Icons.chat,
                            iconColor: Colors.yellow,
                            subtitle: '15 exercises'),
                        exercise(
                            exercise: 'Reading Skills',
                            icon: Icons.voice_chat,
                            iconColor: Colors.green,
                            subtitle: '15 exercises'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
          //end excercises
        ],
      ),
    );
  }
}
