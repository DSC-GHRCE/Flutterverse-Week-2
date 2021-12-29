import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Screens/Home/ShopCategory.dart';
import 'Screens/Home/ProductDetail.dart';
import 'Screens/Account/Account.dart';
import 'Screens/Cart/Cart.dart';
import 'Screens/Home/Home.dart';
import 'Screens/Search/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nuMetro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
            fontFamily: 'Yellowtail'
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/ProductDetail': (context) => const ProductDetail(),
        '/ShopCategory': (context) => const ShopCategory(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageState = 0;
  List<Widget> navScreens = [
    const NavHome(),
    const NavSearch(),
    const NavAccount(),
    const NavCart(),
  ];
  void onTappedNavIcon(int index) {
    setState(() {
      _pageState = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        title: Image.asset('assets/logo.png',width: 150,),
        actions: [
          GestureDetector(
            onTap: (){},
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.red,
                  size: 30,
                )
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.black,
                  size: 35,
                )
            ),
          ),
          const SizedBox(width: 20,)
        ],
        backgroundColor: Colors.grey[200],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: BottomNavigationBar(
            currentIndex: _pageState,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconTheme.of(context).copyWith(color: Colors.red,size: 25),
            unselectedIconTheme: IconTheme.of(context).copyWith(color: Colors.blueGrey,size: 20),
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                  ),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.search,
                  ),
                  label: 'Search'
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.userAlt,
                  ),
                  label: 'Account'
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.shoppingCart,
                  ),
                  label: 'cart'
              ),
          ],
            onTap: onTappedNavIcon,
          ),
        ),
      ),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: navScreens[_pageState],
    ));
  }
}
