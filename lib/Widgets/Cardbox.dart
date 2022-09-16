import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardbox extends StatelessWidget {
   Cardbox({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.color,
    required this.title,
    required this.pic
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  var color;
  var title;
  var pic;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:deviceHeight*0.08,
      width: deviceWidth*0.08,

      decoration:BoxDecoration(
        color:color
        ,
        borderRadius:BorderRadius.circular(10)
    ),padding:EdgeInsets.all(5),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,

        children: [
          Image.asset("images/ic_$pic",width:deviceWidth*0.06,height:deviceHeight*0.05,),
          Text("$title",style:TextStyle(fontSize:MediaQuery.of(context).orientation==Orientation.portrait?deviceWidth*0.010:deviceHeight*0.010,fontWeight: FontWeight.w600),)
        ],

      ),
    );
  }
}