
import 'package:flutter/material.dart';

import 'package:resturantapp/constants.dart';

import 'Widgets/CategoryList.dart';
import 'Widgets/ItemList.dart';

class RightPart extends StatelessWidget {
  const RightPart({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.portrait,
    required this.widthCount,
    required this.minCount,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final bool portrait;
  final int widthCount;
  final int minCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10, left: 10,right:10),
      width: deviceWidth * 0.55,
      height: deviceHeight * 0.9,
      child:Column(
        children: [
          CategoryList(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: deviceWidth * 0.53,
            child: Row(
              children: [
                Container(
                  width: deviceWidth * 0.38,
                  height: deviceHeight * 0.045,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: deviceHeight * 0.016),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,

                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Search Items",
                          hintStyle: TextStyle(
                              color: Colors.black45,
                              fontSize: deviceHeight * 0.016),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.black54,
                          ),
                          contentPadding:
                          EdgeInsets.only(top:portrait ?deviceHeight*0.011:deviceHeight*0.015)),
                    ),
                  ),
                ),
                Container(
                  width: deviceWidth * 0.14,
                  height: deviceHeight * 0.045,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: const Center(
                      child: const Text(
                        "Search",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(

            child: ItemsList(
                widthCount: widthCount,
                minCount: minCount,
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth),
          )
        ],
      ),
    );
  }
}