import 'dart:developer';
import 'dart:ui';


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantapp/Widgets/Cardbox.dart';
import 'package:resturantapp/constants.dart';

import 'RightPartScreen.dart';
import 'Widgets/CategoryList.dart';
import 'Widgets/Header.dart';
import 'Widgets/ItemList.dart';

class Hompagescreen extends StatefulWidget {
  const Hompagescreen({Key? key}) : super(key: key);

  @override
  _HompagescreenState createState() => _HompagescreenState();
}

class _HompagescreenState extends State<Hompagescreen> with SingleTickerProviderStateMixin{
  bool main=true;
  bool cart=false;
  bool placeorder=false;
  int paymentmethod=0;
  bool expanded = true;
  late AnimationController controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
    );
  }
  @override
  Widget build(BuildContext context) {
    var portrait=MediaQuery.of(context).orientation==Orientation.portrait;

    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    /// Inside widget build insert following variables

    final widthCount = (MediaQuery.of(context).size.width ~/ 250).toInt();

    final minCount = 3;
    return Scaffold(
key:_key,
        backgroundColor: const Color(0xfff1f0f0),
        onDrawerChanged: (onDrawerChanged){
          debugPrint('onDrawerChanged? $onDrawerChanged');
          // onDrawerChanged is called on changes in drawer direction
          // true - gesture that the Drawer is being opened
          // false - gesture that the Drawer is being closed
          onDrawerChanged
              ? controller.forward()
              : controller.reverse();
        },
        drawer:portrait?Drawer(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.list_alt,
                  ),
                  title: const Text('POS'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.library_books,
                  ),
                  title: const Text('Transaction'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.book_online,
                  ),
                  title: const Text('Booking'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.featured_play_list,
                  ),
                  title: const Text('Order Status'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.people,
                  ),
                  title: const Text('People'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                  ),
                  title: const Text('Wallet'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank_outlined,
                  ),
                  title: const Text('Food Items'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.star,
                  ),
                  title: const Text('Reviews'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.security_rounded,
                  ),
                  title: const Text('Authentication'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.support,
                  ),
                  title: const Text('Support'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.newspaper,
                  ),
                  title: const Text('Terms \$ Conditions'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),


              ],
            ),
          ),
        ):
        Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              ListTile(
                leading: Icon(
                  Icons.people,
                ),
                title: const Text('People'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet,
                ),
                title: const Text('Wallet'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.food_bank_outlined,
                ),
                title: const Text('Food Items'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.star,
                ),
                title: const Text('Reviews'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.security_rounded,
                ),
                title: const Text('Authentication'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.support,
                ),
                title: const Text('Support'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.newspaper,
                ),
                title: const Text('Terms \$ Conditions'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),


            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color:Colors.white,
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical:10),
                  width:deviceWidth,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("images/logo.png",width:portrait?deviceWidth*0.2:deviceWidth*0.2,),
                   !portrait?Row(


                     children: [

                       Row(
                         children: [

                           Icon(Icons.list_alt,color:primaryColor,),
                           SizedBox(width:4,)
                           ,Text("POS",style:TextStyle(
                             fontWeight:FontWeight.w900,
                           ),)


                         ],
                       ),
                       SizedBox(width:25,),
                       Row(
                         children: [

                           Icon(Icons.my_library_books_sharp,),
                           SizedBox(width:4,)
                           ,Text("Transaction",style:TextStyle(
                             fontWeight:FontWeight.w900,
                           ),)


                         ],
                       ),
                       SizedBox(width:25,),
                       Row(
                         children: [

                           Icon(Icons.book_online),
                           SizedBox(width:4,)
                           ,Text("Booking",style:TextStyle(
                             fontWeight:FontWeight.w900,
                           ),)


                         ],
                       ),
                       SizedBox(width:25,),
                       Row(
                         children: [

                           Icon(Icons.featured_play_list),
                           SizedBox(width:4,)
                           ,Text("Order Status",style:TextStyle(
                             fontWeight:FontWeight.w900,
                           ),)


                         ],
                       )




                   ],):Text(""),


                      Stack(
                        clipBehavior:Clip.none
                        ,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("images/rs_1.png",width:portrait?deviceWidth*0.067:deviceHeight*0.067,height:portrait?deviceHeight*0.04:deviceWidth*0.040,
                              fit:BoxFit.cover,

                            ),
                          ),
                          Positioned(
                            bottom:-5,
                            right:-5,
                            child:Container(
                              width:30,
                              height:30,

                              decoration:BoxDecoration(
                                  shape:BoxShape.circle,
                                  color:primaryColor
                              ),

                              child: Center(
                                child: IconButton(
                                    icon: AnimatedIcon(
                                      icon: AnimatedIcons.menu_close,
                                      progress: controller,
                                      semanticLabel: 'Show menu',size:15,color:Colors.white,
                                    ),
                                    onPressed: () {
                                      _key.currentState!.openDrawer();

                                      setState(() {
                                        expanded ? controller.forward() : controller.reverse();
                                        expanded = !expanded;

                                      });
                                    }),
                              ),),
                          )

                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [

                    main==true
                    ?Container(
                      margin:EdgeInsets.only(top:10),
                      padding:EdgeInsets.symmetric(horizontal:0,vertical:20),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.892,
                      color:Colors.white,

                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset("images/img_noorder.png",width:portrait?deviceWidth*0.4:deviceWidth*0.2,height:portrait?deviceHeight*0.2:deviceHeight*0.35,)
                      ,Container(

                          width: deviceWidth * 0.3,
                          child: Text("You've no \norder in process from\nCounter Desk.",style:TextStyle(fontSize:portrait?deviceHeight*0.02:deviceHeight*0.03,fontWeight:FontWeight.w900),))
                      ,SizedBox(height:10,)
                      ,Container(
                          width: deviceWidth * 0.3,

                          child: Text("Click on any item or add Order Button to create order",style:TextStyle(fontSize:portrait?deviceHeight*0.013:deviceHeight*0.02,color:Colors.black45)))
                      ,  SizedBox(height:40,),
                      Container(
                        width: deviceWidth * 0.3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(

                              onTap:(){

                                setState(() {
                                  main=false;
                                  cart=true;
                                  log("$main");
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal:portrait?10:25,vertical:5),

                                decoration:BoxDecoration(
                                    color:primaryColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child:Center(child: Text("Add Order",style:TextStyle(color:Colors.white),)),
                              ),
                            ),SizedBox(width:16,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal:portrait?10:25,vertical:5),

                              decoration:BoxDecoration(
                                  color:primaryColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child:Center(child: Text("Order Status",style:
                              TextStyle(color:primaryColor)),
                            ))
                          ],
                        ),
                      )
                    ],
                      ),

                    )
                   :cart==true?
                    Container(
                     margin:EdgeInsets.only(top:10),
                     padding:EdgeInsets.symmetric(horizontal:0,vertical:0),
                     width: deviceWidth * 0.45,
                      height: deviceHeight * 0.893,


                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                       children: [

                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left:10.0,bottom:10,top:10),
                             child: Row(
                               mainAxisAlignment:MainAxisAlignment.spaceAround,
                               children: [

                                 Container(
                                   width:deviceWidth*0.12,
                                   child: Text("ITEM",
                                     style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black45),),
                                 ),
                                 Container(
                                   width:deviceWidth*0.1,
                                   child: Text("PRICE",
                                     style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black45),),
                                 ),
                                 Container(
                                   width:deviceWidth*0.115,
                                   child: Text("QNT.",
                                     style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black45),),
                                 ),
                                 Container(
                                   width:deviceWidth*0.1,
                                   child: Text("TOTAL(\$)",
                                     style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black45),),
                                 )


                               ],


                             ),
                           ),
                           Container(
                             color:Colors.white,
                             child:Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left:10.0,top:10,bottom:10),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                                     children: [

                                       Container(
                                         width:deviceWidth*0.11,
                                         child: Text("Farm Ville Pizza",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.12,
                                         child: Row(
                                           children: [
                                             Icon(Icons.remove_circle,color:primaryColor),
                                             Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Text("1",
                                                 style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                             ),
                                             Icon(Icons.add_circle,color:primaryColor),
                                           ],
                                         ),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),


                                     ],


                                   ),
                                 ),
                                 Container(
                                   color:Colors.black12,
                                   height:.5,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:10.0,top:10,bottom:10),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                                     children: [

                                       Container(
                                         width:deviceWidth*0.11,
                                         child: Text("Farm Ville Pizza",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.12,
                                         child: Row(
                                           children: [
                                             Icon(Icons.remove_circle,color:primaryColor),
                                             Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Text("1",
                                                 style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                             ),
                                             Icon(Icons.add_circle,color:primaryColor),
                                           ],
                                         ),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),


                                     ],


                                   ),
                                 ),
                                 Container(
                                   color:Colors.black12,
                                   height:.5,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:10.0,top:10,bottom:10),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                                     children: [

                                       Container(
                                         width:deviceWidth*0.11,
                                         child: Text("Farm Ville Pizza",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.12,
                                         child: Row(
                                           children: [
                                             Icon(Icons.remove_circle,color:primaryColor),
                                             Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Text("1",
                                                 style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                             ),
                                             Icon(Icons.add_circle,color:primaryColor),
                                           ],
                                         ),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),


                                     ],


                                   ),
                                 ),
                                 Container(
                                   color:Colors.black12,
                                   height:.5,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:10.0,top:10,bottom:10),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                                     children: [

                                       Container(
                                         width:deviceWidth*0.11,
                                         child: Text("Farm Ville Pizza",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),
                                       Container(
                                         width:deviceWidth*0.12,
                                         child: Row(
                                           children: [
                                             Icon(Icons.remove_circle,color:primaryColor),
                                             Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Text("1",
                                                 style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                             ),
                                             Icon(Icons.add_circle,color:primaryColor),
                                           ],
                                         ),
                                       ),
                                       Container(
                                         width:deviceWidth*0.1,
                                         child: Text("12.00",
                                           style:TextStyle(fontWeight:FontWeight.w900,color:Colors.black,fontSize:portrait?deviceHeight*0.015:deviceWidth*0.013),),
                                       ),


                                     ],


                                   ),
                                 ),
                                 Container(
                                   color:Colors.black12,
                                   height:.5,
                                 ),
                               ],
                             ),
                           )

                         ],
                       ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.end,

                           children: [



                             Container(
                               width:deviceWidth*0.22,
                               child: Column(
                                 children: [
                                   Row(
                                     children: [
                                       Container(
                                           width:deviceWidth*0.15,

                                           child: Text("Sub total",
                                             style:TextStyle(fontWeight: FontWeight.w600),)),
                                       SizedBox(width:10,),
                                       Text("43.00", style:TextStyle(fontWeight: FontWeight.w600)),
                                     ],
                                   ),
                                   SizedBox(height:5,),
                                   Row(
                                     children: [
                                       Container(
                                           width:deviceWidth*0.15,

                                           child: Text("Tax",
                                             style:TextStyle(fontWeight: FontWeight.w600),)),
                                       SizedBox(width:10,),
                                       Text("3.00", style:TextStyle(fontWeight: FontWeight.w600)),
                                     ],
                                   ),
                                   SizedBox(height:5,),
                                   Row(
                                     children: [
                                       Container(
                                           width:deviceWidth*0.15,

                                           child: Text("Other Charge",
                                             style:TextStyle(fontWeight: FontWeight.w600),)),
                                       SizedBox(width:10,),
                                       Text("0.00", style:TextStyle(fontWeight: FontWeight.w600)),
                                     ],
                                   ),
                                   SizedBox(height:15,),
                                   Row(
                                     children: [
                                       Container(
                                           width:deviceWidth*0.15,

                                           child: Text("Amount to Pay",
                                             style:TextStyle(fontWeight: FontWeight.w600),)),
                                       SizedBox(width:10,),
                                       Text("46.00", style:TextStyle(fontWeight: FontWeight.w600)),
                                     ],
                                   ),
                                   SizedBox(height:15,),
                                 ],
                               ),
                             ),

                             Row(
                               mainAxisAlignment:MainAxisAlignment.spaceBetween,
                               children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      main=true;
                                    });
                                  },
                                   child: Container(
                                     width: deviceWidth * 0.225,
                                     padding: EdgeInsets.symmetric(horizontal:25,vertical:8),

                                     decoration:BoxDecoration(
                                         color:Colors.red,
                                         borderRadius: BorderRadius.circular(0)
                                     ),
                                     child:Center(child: Text("Cancel",style:TextStyle(color:Colors.white,fontSize:portrait?deviceHeight*0.017:deviceWidth*0.015),)),
                                   ),
                                 ),
                                 GestureDetector(
                                   onTap:(){
                                     setState(() {
                                       main=false;
                                       cart=false;
                                     });
                                   },
                                   child: Container(
                                     width: deviceWidth * 0.225,
                                     padding: EdgeInsets.symmetric(horizontal:25,vertical:8),

                                     decoration:BoxDecoration(
                                         color:primaryColor,
                                         borderRadius: BorderRadius.circular(0)
                                     ),
                                     child:Center(child: Text("Place Order",style:TextStyle(color:Colors.white,fontSize:portrait?deviceHeight*0.017:deviceWidth*0.015),)),
                                   ),
                                 )
                               ],
                             ),
                           ],
                         )
                       ],
                     ),

                   ):
                    Container(
                      margin:EdgeInsets.only(top:10),
                      padding:EdgeInsets.symmetric(horizontal:0,vertical:0),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.893,
                      color:Colors.white,

                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:25.0,left:15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  children: [
                                    Text("Amount to Pay ",
                                      style:
                                      TextStyle(fontWeight:FontWeight.w500,
                                          color:Colors.black,fontSize:portrait?deviceHeight*0.019:
                                          deviceWidth*0.019),),
                                    Text("\$46.00",
                                      style:
                                      TextStyle(fontWeight:FontWeight.w900,
                                          color:Colors.black,fontSize:portrait?deviceHeight*0.019:
                                          deviceWidth*0.019),),
                                  ],
                                ),
                                SizedBox(height:29,),
                                Text("Select Payment Method",
                                  style:
                                  TextStyle(fontWeight:FontWeight.w900,
                                      color:Colors.black45,fontSize:deviceHeight*0.015),),
                                SizedBox(height:10,),
                                Row(
                                  children: [
                                    Radio(
                                      activeColor:primaryColor,
                                      value: 0,
                                      groupValue:paymentmethod,
                                      onChanged:(n){
                                        if (n != null) {
                                          setState(() {

                                          });
                                        }
                                      },

                                    ),

                                    Text('Cash ',style:TextStyle(fontWeight:FontWeight.w900,
    color:Colors.black,fontSize:portrait?deviceHeight*0.015:
    deviceWidth*0.015),),
                                    SizedBox(width:50,),
                                    Radio(
                                      activeColor:primaryColor,
                                      value: 1,
                                      groupValue:paymentmethod,
                                      onChanged:(n){
                                        if (n != null) {
                                          setState(() {

                                          });
                                        }
                                      },
                                    ),
                                    Text('Card ',style:TextStyle(fontWeight:FontWeight.w900,
                                        color:Colors.black,fontSize:portrait?deviceHeight*0.015:
                                        deviceWidth*0.015),),
                                  ],
                                ),
                                SizedBox(height:29,),
                                Text("Order Type",
                                  style:
                                  TextStyle(fontWeight:FontWeight.w900,
                                      color:Colors.black45,fontSize:deviceHeight*0.015),),
                                SizedBox(height:10,),
                                Row(
                                  children: [
                                    Radio(
                                      activeColor:primaryColor,
                                      value: 0,
                                      groupValue:paymentmethod,
                                      onChanged:(n){
                                        if (n != null) {
                                          setState(() {

                                          });
                                        }
                                      },

                                    ),

                                    Text('TakeAway ',style:TextStyle(fontWeight:FontWeight.w900,
                                        color:Colors.black,fontSize:portrait?deviceHeight*0.015:
                                        deviceWidth*0.015),),
                                    SizedBox(width:50,),
                                    Radio(
                                      activeColor:primaryColor,
                                      value: 1,
                                      groupValue:paymentmethod,
                                      onChanged:(n){
                                        if (n != null) {
                                          setState(() {

                                          });
                                        }
                                      },
                                    ),
                                    Text('Dine-In ',style:TextStyle(fontWeight:FontWeight.w900,
                                        color:Colors.black,fontSize:portrait?deviceHeight*0.015:
                                        deviceWidth*0.015),),
                                  ],
                                ),
                                SizedBox(height:29,),
                                Text("Customer Info (Optional)",
                                  style:
                                  TextStyle(fontWeight:FontWeight.w900,
                                      color:Colors.black45,fontSize:deviceHeight*0.015),),
                                SizedBox(height:10,),

                                Container(
                                  width:deviceWidth*0.4,
                                  padding:EdgeInsets.symmetric(horizontal: 15),
                                  decoration:BoxDecoration(
                                    color:Color(0xfff1f0f0),
                                    borderRadius:BorderRadius.circular(20)

                                  ),

                                  child:TextField(

                                    decoration:InputDecoration(
                                        border: InputBorder.none,
                                      hintText:"Enter Full Name",
                                      hintStyle:TextStyle(fontWeight:FontWeight.w600,
                                          color:Colors.black)
                                    ),
                                  ),
                                ),
                                SizedBox(height:10,),

                                Container(
                                  width:deviceWidth*0.4,
                                  padding:EdgeInsets.symmetric(horizontal: 15),
                                  decoration:BoxDecoration(
                                      color:Color(0xfff1f0f0),
                                      borderRadius:BorderRadius.circular(20)

                                  ),

                                  child:TextField(

                                    decoration:InputDecoration(
                                        border: InputBorder.none,
                                        hintText:"Enter Phone Number",
                                        hintStyle:TextStyle(fontWeight:FontWeight.w600,
                                            color:Colors.black)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    cart=true;
                                  });
                                },
                                child: Container(
                                  width: deviceWidth * 0.225,
                                  padding: EdgeInsets.symmetric(horizontal:25,vertical:8),

                                  decoration:BoxDecoration(
                                      color:Colors.red,
                                      borderRadius: BorderRadius.circular(0)
                                  ),
                                  child:Center(child: Text("Cancel",style:TextStyle(color:Colors.white,fontSize:portrait?deviceHeight*0.017:deviceWidth*0.015),)),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    main=true;
                                    cart=false;
                                  });

                                },
                                child: Container(
                                  width: deviceWidth * 0.225,
                                  padding: EdgeInsets.symmetric(horizontal:25,vertical:8),

                                  decoration:BoxDecoration(
                                      color:primaryColor,
                                      borderRadius: BorderRadius.circular(0)
                                  ),
                                  child:Center(child: Text("Submit",style:TextStyle(color:Colors.white,fontSize:portrait?deviceHeight*0.017:deviceWidth*0.015),)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

                    ),


                    RightPart(deviceWidth: deviceWidth, deviceHeight: deviceHeight, portrait: portrait, widthCount: widthCount, minCount: minCount),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}


