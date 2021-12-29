import 'package:flutter/material.dart';
import '../../Providers/ProductProvider.dart';
import '../../Widgets/Home/SpecificationCaseWidget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);
  static const routeName = '/ProductDetail';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Product;
    Size sizeOfScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
      bottomNavigationBar: Container(
        height: sizeOfScreen.height * 0.1,
        width: sizeOfScreen.width,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius:BorderRadius.all(Radius.circular(50))
          ),
          child: const Center(
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                'Add to Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Image.network(
                          args.productImg,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    )
                ),
                Expanded(
                    flex: 3,
                    child: Container()
                ),
              ],
            ),
            Positioned(
              left: sizeOfScreen.width * 0.05,
              bottom: sizeOfScreen.height * 0.53,
              child: RotatedBox(
                quarterTurns: 3,
                child: Center(
                  child: Text(
                    '${args.collection}  //  ${args.year}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'Yanone Kaffeesatz'
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: sizeOfScreen.width * 0.05,
              bottom: sizeOfScreen.height * 0.01,
              child: Container(
                height: sizeOfScreen.height * 0.4,
                width: sizeOfScreen.width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20),)
                ),
                child: SpecificationsWidget(sizeOfScreen: sizeOfScreen, args: args),
              ),
            )
          ]
      )
    );
  }
}


