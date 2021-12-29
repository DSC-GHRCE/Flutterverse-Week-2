import 'package:flutter/material.dart';
import '../../Providers/ProductProvider.dart';

class ProductCase extends StatefulWidget {
  final Product item;
  final int index;
  final int lenOfList;
  const ProductCase({Key? key, required this.item, required this.index,required this.lenOfList}) : super(key: key);

  @override
  State<ProductCase> createState() => _ProductCaseState();
}

class _ProductCaseState extends State<ProductCase> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/ProductDetail',arguments: widget.item);
            },
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              child: SizedBox(
                                width: 250,
                                child: Image.network(widget.item.productImg,fit: BoxFit.fitWidth,alignment: Alignment.topCenter,),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            height: 250,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Center(
                                child: Text(
                                  '${widget.item.collection}  //  ${widget.item.year}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily: 'Yanone Kaffeesatz'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 250,
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.item.brand,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  widget.item.product,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      letterSpacing: 0.5,
                                      fontFamily: 'Yanone Kaffeesatz'
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${(widget.index+1).toString()}/${widget.lenOfList}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Yanone Kaffeesatz'
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.item.price,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Yanone Kaffeesatz'
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  widget.item.isFav = !widget.item.isFav;
                });
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.favorite,
                  color: widget.item.isFav == true ? Colors.red : Colors.grey[400],
                  size: widget.item.isFav == true ? 28 : 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}