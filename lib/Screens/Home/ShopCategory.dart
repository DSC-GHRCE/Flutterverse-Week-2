import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Providers/CategoryProvider.dart';

class ShopCategory extends StatelessWidget {
  const ShopCategory({Key? key}) : super(key: key);
  static const routeName = '/ShopCategory';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Category;
    Size sizeOfScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          args.label,
          style: const TextStyle(
          color: Colors.black,
            fontSize: 22
        ),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: Container(
                  height: sizeOfScreen.height * 0.2,
                  width: double.infinity,
                  color: Colors.grey[400],
                  child: Image.network(args.image,fit: BoxFit.fitWidth,alignment: Alignment.center,),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                child: Container(
                  width: sizeOfScreen.width ,
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Center(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(50),
                              )
                          ),
                          child: const Icon(
                            Icons.search_rounded,
                            size: 30,
                            color: Colors.blueGrey,
                          ),
                        ),
                        hintText: 'What are you Looking for ?',
                        hintStyle: const TextStyle(
                          fontSize: 20,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 20,),
                SizedBox(
                  height: sizeOfScreen.height * 0.2,
                  width: sizeOfScreen.width * 0.6,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: FaIcon(
                        FontAwesomeIcons.boxOpen,
                        size: 200,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Nothing Here at the Moment!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ],),
          ),
        ],
      ),
    );
  }
}
