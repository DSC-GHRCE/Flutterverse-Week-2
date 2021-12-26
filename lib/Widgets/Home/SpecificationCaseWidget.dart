import 'package:flutter/material.dart';
import 'package:flutterverseone/Providers/ProductProvider.dart';

class SpecificationsWidget extends StatefulWidget {
  const SpecificationsWidget({
    Key? key,
    required this.sizeOfScreen,
    required this.args,
  }) : super(key: key);

  final Size sizeOfScreen;
  final Product args;

  @override
  State<SpecificationsWidget> createState() => _SpecificationsWidgetState();
}

class _SpecificationsWidgetState extends State<SpecificationsWidget> {
  String dropdownValue = 'Black';
  String dropdownValue2 = 'L';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.blueGrey,
                width: 1.0,
              ),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: widget.sizeOfScreen.height * 0.12,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          widget.args.brand,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          widget.args.product,
                          style: const TextStyle(
                              fontSize: 26
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        widget.args.isFav = !widget.args.isFav;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: widget.args.isFav == true ? Colors.red : Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: widget.args.isFav == true ? Colors.red : Colors.grey,
                          size: widget.args.isFav == true ? 28 : 25,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
        const FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            'Specifications',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: const Divider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text(
                  'Colour : ',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(
                    Icons.bubble_chart_rounded,
                    color: dropdownValue == 'Black' ? Colors.black : widget.args.selectColor,
                  ),
                  elevation: 16,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Yanone Kaffeesatz',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 0.9,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      if(newValue == 'Grey'){
                        widget.args.selectColor = Colors.grey;
                      }else if(newValue == 'Navy Blue'){
                        widget.args.selectColor = Colors.blue.shade900;
                      }else if(newValue == 'Peach'){
                        widget.args.selectColor = Colors.yellow.shade800;
                      }
                    });
                  },
                  items: <String>['Black', 'Grey', 'Navy Blue', 'Peach']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Row(
                children: [
                  const Text(
                      'Size : '
                  ),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    icon: Icon(
                      Icons.format_size_rounded,
                      color: dropdownValue == 'Black' ? Colors.black : widget.args.selectColor,
                    ),
                    elevation: 16,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Yanone Kaffeesatz',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.9,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                        widget.args.productSize = newValue;
                      }
                      );
                    },
                    items: <String>['XS', 'S', 'M', 'L', 'XL', 'XXL']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ]
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: const Divider(),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 0,left: 20,right: 20),
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context,index){
              List temp = ['Fit','Material Details','Pattern','Sleeves Type','Closure Type'];
              List temp2 = [widget.args.specs.fit,widget.args.specs.material,widget.args.specs.pattern,widget.args.specs.sleeves,widget.args.specs.closure];
              return Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        color: Colors.blueGrey
                    )
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text(temp[index]),
                  subtitle: Text(
                    temp2[index],
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}