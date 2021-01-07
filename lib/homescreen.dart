import 'package:flutter/material.dart';

import 'package:pet_shop/pet_info.dart';
import 'configuration.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0, yOffset = 0, scaleFactor = 1;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(isOpen?40:0),
      color: Colors.grey[200],
        
     ),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isOpen?-0.5:0),
        duration: Duration(milliseconds: 250),
        child: Column(children: [
          sb(40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_left_sharp, size: 40),
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isOpen = false;
                          });
                        })
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isOpen = true;
                          });
                        },
                      ),
                Column(
                  children: [
                    Text('Location'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: pR,
                        ),
                        Text('Surat',
                            style: TextStyle(color: Colors.grey, fontSize: 16))
                      ],
                    ),
                  ],
                ),
                CircleAvatar()
              ],
            ),
          ),
          sb(20),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search your favourite pet'),
                  Icon(Icons.settings)
                ],
              )),
          Container(
              height: 120,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: shadowList),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 50,
                              width: 50,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(categories[index]['name'])
                        ],
                      ),
                    );
                  })),
          sb(10),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PetInfo();
              }));
            },
            child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                //color: Colors.white,
                child: Row(children: [
                  Expanded(
                      child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: pR,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: shadowList),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Align(child: Image.asset('images/pet-cat1.png'))
                  ])),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: shadowList,
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      //child: Column(children: [Row(children: [Text('ABC'),Icon(FontAwesomeIcons.male)],)],),
                    ),
                  )
                ])),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PetInfo();
              }));
            },
            child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                //color: Colors.white,
                child: Row(children: [
                  Expanded(
                      child: Stack(children: [
                     Container(
                      decoration: BoxDecoration(
                          color: pR,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: shadowList),
                      margin: EdgeInsets.only(top: 40),
                    ),
                    Align(child: Hero(tag:1,child: Image.asset('images/pet-cat2.png')))
                  ])),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: shadowList,
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      //child: Column(children: [Row(children: [Text('ABC'),Icon(FontAwesomeIcons.male)],)],),
                    ),
                  )
                ])),
          )
        ]));
  }
}
