import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class ExtendedUi extends StatelessWidget {
  int? index;
  ExtendedUi({this.index});
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          "assets/amazonLogo.png",
          width: 100,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset(productList[index!]["imagePath"]!),
            ),
            SizedBox(height: 20),
            Text(
              productList[index!]["name"]!,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              productList[index!]["price"]!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              productList[index!]["deliveryTime"]!,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
              ),
              child: Center(
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce euismod auctor luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec augue tellus, mollis et quam eget, feugiat finibus nibh. Duis tincidunt, velit sit amet eleifend condimentum, lectus metus auctor augue, sed congue metus "),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffFF9D0D),
        ),
        child: Center(
          child: Text("BUY NOW",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
