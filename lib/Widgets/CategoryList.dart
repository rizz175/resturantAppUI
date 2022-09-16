import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantapp/Widgets/Cardbox.dart';
import 'package:resturantapp/constants.dart';
class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    var portrait=MediaQuery.of(context).orientation==Orientation.portrait;
    return Container(
      height:portrait?deviceHeight*.08:deviceHeight*0.1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: primaryColor,
              title: "FAST FOOD",
              pic: "fastfood.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "SEA FOOD",
              pic: "Seafood.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "CHINESE",
              pic: "chinese.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "DESSERT",
              pic: "dessert.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "FAST FOOD",
              pic: "fastfood.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "SEA FOOD",
              pic: "Seafood.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "CHINESE",
              pic: "chinese.png"),
          SizedBox(width:5,),
          Cardbox(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              color: Colors.white,
              title: "DESSERT",
              pic: "dessert.png"),
          SizedBox(width:5,),
        ],
      ),
    );
  }
}