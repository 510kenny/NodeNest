import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:final_project/profile.dart';
import 'package:final_project/forumpage1.dart';
import 'package:final_project/forumpage2.dart';
import 'package:final_project/forumpage3.dart';
import 'package:final_project/forumpage4.dart';
import 'package:final_project/forumpage5.dart';

class basehomepage extends StatefulWidget {
  const basehomepage({super.key});

  @override
  State<basehomepage> createState() => _basehomepageState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _basehomepageState extends State<basehomepage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(197, 1, 73, 124),
        title: const Text('NodeNest'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("Home"),
            ),
            Tab(
              child: Text("Profile"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            color: Color.fromARGB(197, 1, 73, 124),
            child: SingleChildScrollView(
              child: (Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "all eyes on me",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Image.asset('images/2pac2.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0, -1.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 35.0),
                            child: ElevatedButton(
                              child: Text(
                                'Join!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => ForumPage())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 9, 1, 255),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),

                          ),
                        ),
                        Text(
                          "22K",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30,
                              height: -1),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Text(
                          "Graduation",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Image.asset('images/graduation.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0, -1.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 35.0),
                            child: ElevatedButton(
                              child: Text(
                                'Join!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => ForumPage2())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 9, 1, 255),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Text(
                          "95K",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30,
                              height: -1),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Text(
                          "ready to die",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Image.asset('images/notorious big.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0, -1.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 35.0),
                            child: ElevatedButton(
                              child: Text(
                                'Join!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => ForumPage3())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 9, 1, 255),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Text(
                          "74K",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30,
                              height: -1),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Text(
                          "songs in the key of life",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Image.asset('images/stevie wonder.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0, -1.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 35.0),
                            child: ElevatedButton(
                              child: Text(
                                'Join!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => ForumPage4())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 9, 1, 255),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Text(
                          "91K",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30,
                              height: -1),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Text(
                          "Damn",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            height: 150,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Image.asset('images/damn album.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0, -1.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 35.0),
                            child: ElevatedButton(
                              child: Text(
                                'Join!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => ForumPage5())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 9, 1, 255),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Text(
                          "97K",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 2555, 255),
                              fontSize: 30,
                              height: -1),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text(
                'Change your info!',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 1, 238, 255),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
