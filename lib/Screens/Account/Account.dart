import 'package:flutter/material.dart';
import '../../Widgets/Search/AccountOptionsWidget.dart';
import '../../Widgets/Account/ProfilePictureWidget.dart';

class NavAccount extends StatelessWidget {
  const NavAccount({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 10,),
        const Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )
        ),
        const SizedBox(height: 10,),
        const Center(
          child: ProfilePicture(), //CircleAvatar
        ),
        const SizedBox(height: 5,),
        Row(
          children: [
            const Expanded(child: SizedBox(width: 5,)),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide( //                   <--- left side
                    color: Colors.black,
                    width: 3.0,
                  ),
                )
              ),
              child: const Text(
                'Dre Hellsworth',
                style: TextStyle(
                  fontSize: 26
                ),
              ),
            ),
            const Expanded(child: SizedBox(width: 5,)),
          ],
        ),
        const SizedBox(height: 20,),
        const AccountOptions(),
      ],
    );
  }
}


