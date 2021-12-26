import 'package:flutter/material.dart';
import 'package:flutterverseone/item%20menu.dart';
import 'constants.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.border_all_rounded,
              size: 30,
              color: Colors.brown.shade900,
            ),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/sinchan.jpg"),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.lightGreen.shade100,
        child: item_menu(),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.green.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                    color: Colors.brown
                ),
                SizedBox(height: 2),
                Text(
                  "Home",style: TextStyle( color: Colors.brown,),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.article,
                  size: 30,
                    color: Colors.brown
                ),
                SizedBox(height: 2),
                Text(
                  "Article",style: TextStyle( color: Colors.brown,),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.chat,
                  size: 30,
                    color: Colors.brown
                ),
                SizedBox(height: 2),
                Text(
                  "Chat", style: TextStyle( color: Colors.brown,),
                )
      ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                    color: Colors.brown
                ),
                SizedBox(height: 2),
                Text(
                  "Profile",style: TextStyle(
                    color: Colors.brown
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

