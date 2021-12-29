import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context,index) {
              List tempTitle = ['Edit Profile','Shipping Address','Order History','Notifications','Cards'];
              List tempIcon = [
                FontAwesomeIcons.userAlt,
                FontAwesomeIcons.locationArrow,
                FontAwesomeIcons.history,
                FontAwesomeIcons.solidBell,
                FontAwesomeIcons.ccMastercard,
              ];
              List tempColor = [Colors.blue.shade400,Colors.red,Colors.orange,Colors.yellow,Colors.green,];
              return GestureDetector(
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: ListTile(
                    leading: FaIcon(
                      tempIcon[index],
                      color: tempColor[index],
                    ),
                    title: Text(
                      tempTitle[index],
                      style: const TextStyle(
                          fontSize: 20
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}