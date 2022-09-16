
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantapp/Widgets/Cardbox.dart';
import 'package:resturantapp/constants.dart';
class GridBox extends StatelessWidget {
  GridBox({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.title,
    required this.price,
    required this.pic
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  var title;
  var price;
  var pic;

  @override
  Widget build(BuildContext context) {
    return Container(



      decoration:BoxDecoration(
          color:Colors.white
          ,
          borderRadius:BorderRadius.circular(15)
      ),
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
            child: Container(
              height:deviceHeight*0.13,
              width:deviceWidth*.26,


              child:Image.asset("images/$pic",fit:BoxFit.cover,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [

                Text("$title",style:TextStyle( fontWeight:FontWeight.w600,
                    color:Colors.black,fontSize: deviceHeight*0.012),),
                SizedBox(height:5,),
                Row(
                  children: [
                    Image.asset("images/ic_veg.png",width:deviceWidth*0.02,),

                    Text("  \$$price",style:TextStyle(
                        color:Colors.black,fontSize: deviceHeight*0.01),),
                  ],
                ),
              ],
            ),
          ),




        ],
      ),

    );
  }
}