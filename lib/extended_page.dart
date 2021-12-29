import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class extend_page extends StatelessWidget {
  int? index;
  extend_page({this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Details",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                  color: Colors.green.shade900),
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightGreen.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(chairs[index!]["img"]!),
                        fit: BoxFit.cover)),
                //Image.asset(chairs[index!]["img"]!
              ),
              SizedBox(height: 10),
              Text(chairs[index!]["name"]!,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900)),
              SizedBox(height: 10),
              Text(chairs[index!]["price"]!,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown)),
              SizedBox(height: 10),
              Container(
                height: 140,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightGreen.shade50,
                ),
                child: Center(
                  child: Text(
                    chairs[index!]["intro"]!,
                    style:
                        TextStyle(fontSize: 12, color: Colors.green.shade900),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightGreen,
                ),
                child: Center(
                    child: Text(
                  "BUY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
