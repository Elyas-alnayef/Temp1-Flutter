import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:temp1/Pages/page1.dart';

import '../Components/categorybox.dart';
import '../Components/consultantcard.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              setState(() {
                Get.to(Page1());
              });
            });
          },
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.window), label: 'Any'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
        backgroundColor: Colors.blue[800],
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(children: [
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
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Categories",
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
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                categorybox(
                                    categoryname: 'Relationship',
                                    end: Colors.green,
                                    start: Colors.red),
                                SizedBox(
                                  height: 8,
                                ),
                                categorybox(
                                    categoryname: 'Career',
                                    end: Colors.blue,
                                    start: Colors.yellow),
                              ],
                            ),
                            Column(
                              children: [
                                categorybox(
                                    categoryname: 'Education',
                                    end: Colors.red,
                                    start: Colors.blue),
                                SizedBox(
                                  height: 8,
                                ),
                                categorybox(
                                    categoryname: 'Other',
                                    end: Colors.green,
                                    start: Colors.blue),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Consultant",
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
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(
                          child: Container(
                            child: ListView(
                              padding: EdgeInsets.all(0),
                              children: [
                                consultantcard(
                                    name: 'Boby singer',
                                    icon: Icons.person,
                                    iconColor: Colors.blue,
                                    subtitle: 'Education'),
                                consultantcard(
                                    name: 'Dane winchester',
                                    icon: Icons.person,
                                    iconColor: Colors.red,
                                    subtitle: 'Relationship'),
                                consultantcard(
                                    name: 'Jone',
                                    icon: Icons.person,
                                    iconColor: Colors.yellow,
                                    subtitle: 'Education'),
                                consultantcard(
                                    name: 'Daved',
                                    icon: Icons.person,
                                    iconColor: Colors.green,
                                    subtitle: 'Career'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
