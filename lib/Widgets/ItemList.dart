import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantapp/Widgets/Cardbox.dart';
import 'package:resturantapp/constants.dart';

import 'GridBox.dart';
class ItemsList extends StatelessWidget {
  const ItemsList({
    Key? key,
    required this.widthCount,
    required this.minCount,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final int widthCount;
  final int minCount;
  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    var portrait=MediaQuery.of(context).orientation==Orientation.portrait;

    return GridView.count(





      crossAxisCount:portrait?2:3,
        mainAxisSpacing:10
        ,crossAxisSpacing:10,
        childAspectRatio:portrait?0.85:1.1,
        children:[
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Sandwich",price:"5.00",pic:"1.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Shrips Rice",price:"3.00",pic:"2.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Cheese Bresd",price:"2.00",pic:"3.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Chese Sandwich",price:"1.00",pic:"4.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Margerita Pizza",price:"4.00",pic:"5.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Manchau",price:"2.00",pic:"6.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Spring Noodle",price:"3.00",pic:"7.png"),
          GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Mix Pizza",price:"5.00",pic:"8.png"),
        GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Sandwich",price:"5.00",pic:"1.png"),
    GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Shrips Rice",price:"3.00",pic:"2.png"),
 GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Veg Sandwich",price:"5.00",pic:"1.png"),
    GridBox(deviceHeight: deviceHeight, deviceWidth: deviceWidth,title:"Shrips Rice",price:"3.00",pic:"2.png"),




    ]

    );
  }
}

