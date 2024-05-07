// import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool _isPressed1 = false;
bool _isPressed2 = false;
bool _isPressed3 = false;
bool _isPressed4 = false;
bool _isPressed5 = false;
bool _isPressed6 = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Appbar
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Text(
                        'Home',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(4), // Border radius
                          child: ClipOval(
                              child: Image.asset('assets/images/profile.png')),
                        ),
                      )
                    ],
                  ),
                ),
            
                //banner
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.asset('assets/images/Banner.png'),
                ),
            
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  child: Row(
                    children: [
                      Text(
                        'Featured Products',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
            
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Card(
                          surfaceTintColor: Colors.white,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            // height: MediaQuery.of(context).size.height*0.23,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/airpods.png',
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'MMK 820,000',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Text(
                                    'Airpods Pro (2nd Generation)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Unheard-of sound. on every level',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      height: 30,
                                      width: 70,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Buy',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(0),
                                            backgroundColor: Colors.blue),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10);
                    },
                  ),
                ),
                //buttons
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
            
                                  _isPressed1 = !_isPressed1;
                                });
                              },
                              child: Text(
                                'iPhone',
                                style: TextStyle(
                                  color: _isPressed1
                                      ? Colors.white
                                      : Colors.black, // Change text color
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _isPressed1
                                    ? Colors.black
                                    : Colors.white, // Change button color
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isPressed2 = !_isPressed2;
                              });
                            },
                            child: Text(
                              'iPad',
                              style: TextStyle(
                                color: _isPressed2
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isPressed2
                                  ? Colors.black
                                  : Colors.white, // Change button color
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isPressed3 = !_isPressed3;
                              });
                            },
                            child: Text(
                              'Macbook',
                              style: TextStyle(
                                color: _isPressed3
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isPressed3
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isPressed4 = !_isPressed4;
                              });
                            },
                            child: Text(
                              'Airpod',
                              style: TextStyle(
                                color: _isPressed4
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isPressed4
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isPressed5 = !_isPressed5;
                              });
                            },
                            child: Text(
                              'Apple Watch',
                              style: TextStyle(
                                color: _isPressed5
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isPressed5
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {

                                  _isPressed6 = !_isPressed6;
                                });
                              },
                              child: Text(
                                'Accessories',
                                style: TextStyle(
                                  color: _isPressed6
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _isPressed6
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 0.73
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        surfaceTintColor: Colors.white,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          // height: MediaQuery.of(context).size.height*0.23,
                          // height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/airpods.png',
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'MMK 820,000',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                                Text(
                                  'Airpods Pro (2nd Generation)',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     'Unheard-of sound. on every level',
                                //     style: TextStyle(
                                //         fontSize: 10, color: Colors.grey),
                                //   ),
                                // ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.all(0),
                                          backgroundColor: Colors.blue),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
