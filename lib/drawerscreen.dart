import 'package:flutter/material.dart';
import 'package:pet_shop/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: 40, left: 10),
      color: pR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              sbw(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Het Naik',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Active',
                    style: TextStyle(
                      color: Colors.lightGreenAccent,
                    ),
                  )
                ],
              )
            ],
          ),
          ListView.builder(
            itemCount: dI.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        dI[index]['icon'],
                        color: index == 0 ? Colors.white : Colors.grey[800],
                        size: 25,
                      ),
                      sbw(10),
                      Text(
                        dI[index]['title'],
                        style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  sb(40)
                ],
              );
            },
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.grey[800],
                    size: 25,
                  ),
                  sbw(10),
                  Text('Settings',style:TextStyle(color:Colors.grey[800],fontSize: 20,fontWeight: FontWeight.w500)),
                  sbw(10),
                  Text('|',style:TextStyle(color:Colors.grey[800],fontSize: 16,fontWeight: FontWeight.w500)),
                  sbw(10),
                  Text('Log out',style:TextStyle(color:Colors.grey[800],fontSize: 20,fontWeight: FontWeight.w500))
                ],
              ))
        ],
      ),
    );
  }
}
