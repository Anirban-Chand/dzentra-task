import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    circularContainer(double size, IconData icn, String text) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size,
            width: size,
            child: Center(child: Icon(icn)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(text, style: TextStyle(fontSize: 12)),
        ],
      );
    }

    upperPart() {
      return Container(
        height: 250,
        width: width,
        color: Colors.lightBlue[800],
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.tune, color: Colors.white),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child:
                              Icon(Icons.qr_code_scanner, color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Container(
                          child:
                              Icon(Icons.lightbulb_sharp, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Hey,',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Text(' Afrin',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      Text('18445',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      Text('Instructor',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      Text('Physics',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 90,
                        width: 90,
                        color: Colors.white,
                        child: Icon(Icons.person, size: 72, color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text('Instructor ID: 18445',
                          style: TextStyle(fontSize: 16, color: Colors.white))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    bottomPart() {
      return Padding(
        padding: const EdgeInsets.only(top: 220),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.yellow,
              height: height * 0.13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  circularContainer(60, Icons.calendar_month, 'Schedule'),
                  circularContainer(60, Icons.person, 'Attendance'),
                  circularContainer(60, Icons.assignment, 'Assignments'),
                  circularContainer(60, Icons.grade, 'Results')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('Hello, Afrin!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: Text('Your Activity',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.only(top: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          elevation: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: 120,
                            color: Colors.red[400],
                          ),
                        ),
                        Card(
                          elevation: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: 120,
                            color: Colors.yellow[400],
                          ),
                        ),
                        Card(
                          elevation: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: 120,
                            color: Colors.blue[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wednesday, Jun 23',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Icon(Icons.calendar_month)
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          height: 100,
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('10:00 AM'),
                                  Icon(Icons.qr_code,
                                      size: 80, color: Colors.teal),
                                ],
                              ),
                              Container(
                                width: width - 120,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Basic Physics',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.red[400])),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.red[400]),
                                        Text('Physics Building Floor 2, 1A',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.red[400])),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: Container(
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('11:00 AM'),
                                  Icon(Icons.qr_code,
                                      size: 80, color: Colors.teal),
                                ],
                              ),
                              Container(
                                width: width - 120,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Basic Physics',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.blue[400])),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.blue[400]),
                                        Text('Physics Building Floor 2, 1A',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blue[400])),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Container(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('12:00 PM'),
                                  Icon(Icons.qr_code,
                                      size: 80, color: Colors.teal),
                                ],
                              ),
                              Container(
                                width: width - 120,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Basic Physics',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.red[400])),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.red[400]),
                                        Text('Physics Building Floor 2, 1A',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.red[400])),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Container(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('01:00 PM'),
                                  Icon(Icons.qr_code,
                                      size: 80, color: Colors.teal),
                                ],
                              ),
                              Container(
                                width: width - 120,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Basic Physics',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green[400])),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.green[400]),
                                        Text('Physics Building Floor 2, 1A',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.green[400])),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Container(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  upperPart(),
                  Container(
                    height: 1200,
                    width: width,
                  ),
                ],
              ),
              bottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}
