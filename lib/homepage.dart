import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:scaled_list/scaled_list.dart';

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
    var myColors = [Colors.red[400], Colors.yellow[700], Colors.blue[400]];

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

    bottomCarousels() {
      return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 220,
          ),
          items: [1, 2].map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: width,
                    margin:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Test Results',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                  Text('Out Now!',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Center(child: Text('Check Now')),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.blue,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person, color: Colors.white60, size: 120)
                          ],
                        ),
                      ],
                    ));
              },
            );
          }).toList(),
        ),
      );
    }

    upperPart() {
      return Container(
        height: height * 0.35,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Text('Hello, Afrin!',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Your Activity',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: width * 0.4,
                        margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 8,
                              percent: 0.3,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('12/40',
                                    style: TextStyle(
                                      color: Colors.red[100],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              backgroundColor: Colors.transparent,
                              progressColor: Colors.red[100],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Attendance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text('Working hours exceeded by 3 hours',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width * 0.4,
                        margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 8,
                              percent: 0.3,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('30%',
                                    style: TextStyle(
                                      color: Colors.amber[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              backgroundColor: Colors.transparent,
                              progressColor: Colors.amber[800],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Assignments',
                                      style: TextStyle(
                                          color: Colors.yellow[900],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text('Excellent Results',
                                      style: TextStyle(
                                          color: Colors.yellow[200], fontSize: 10)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width * 0.4,
                        margin: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 8,
                              percent: 0.3,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('30%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              backgroundColor: Colors.transparent,
                              progressColor: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Attendance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text('Excellent Attendance',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('Checkout Now',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                bottomCarousels(),
              ],
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
