import 'package:appshop/widgets/HomeAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appshop/widgets/HomeAppBar.dart';
import 'package:appshop/widgets/CategoriesWidget.dart';
import 'package:appshop/widgets/ItemsWidget.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 200, 152, 152),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search here",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color.fromARGB(0, 156, 12, 12),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 239, 239)),
                  ),
                ),
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft ,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling", 
                    style: TextStyle(
                    fontSize: 20 ,
                    fontWeight:FontWeight.bold ,
                    color: Color.fromARGB(255, 255, 239, 239),
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color:Color.fromARGB(255, 255, 193, 193) ,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
            Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
            Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
