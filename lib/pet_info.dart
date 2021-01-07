import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'configuration.dart';

class PetInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(child: Container(color: pR)),
              Expanded(child: Container(color: Colors.white))
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      )
                    ])),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: 1,
                    child: Image.asset(
                      'images/pet-cat2.png',
                    ),
                  ))),
          Container(
              child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              width: 310,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: shadowList,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tom',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      Icon(FontAwesomeIcons.handHoldingUsd)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Abyssinian cat',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text('3 years old',
                          style: TextStyle(color: Colors.grey[800]))
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on),
                      Text('401, Dharma Complex, Parle Point,Surat',
                          style:
                              TextStyle(color: Colors.grey[800], fontSize: 13))
                    ],
                  )
                ],
              ),
            ),
          )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 50,
                        color: pR,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.heart,
                        ),
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onPressed: () {},
                        color: pR,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Adopt',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
