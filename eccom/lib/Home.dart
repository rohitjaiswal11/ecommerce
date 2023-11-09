import 'package:eccom/Cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'List.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //List<Model> cartItems = [];



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce"),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              // IconButton(
              //   icon: Icon(Icons.shop),
              //   onPressed: () {
              //   Get.to(CartScreen(cartItems: cartItems),);
              //   },
              // ),
              Positioned(
                right: 10,
                top: 8,
                child: Text(
                  cartItems.length.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: listProduct.length,
        // shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            childAspectRatio: 0.9),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Stack(children: [
              Container(
                  height: 45, child: Image.asset(listProduct[index].image), alignment: Alignment.center,),
              Positioned(
                right: 4,
                top: 4,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite,
                    size: 21,
                    color: Colors.red,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              

                  SizedBox(height: 50),
                  Text(
                    listProduct[index].name,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Rs. 1000.00', textAlign: TextAlign.center),
                      SizedBox(width: 4),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            addToCart(listProduct[index]);
                            print("this add to ca===t data $listProduct");
                          },
                          icon: Icon(Icons.add_circle_outline),
                          color: Colors.deepPurple,
                          iconSize: 30,
                          splashRadius: 10,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))))),
                    ],
                  ),
                ],
              ),
            ]),
          );
          ;
        },
      ),
    );
  }



  void addToCart(Model product) {
    setState(() {
      cartItems.add(product);

      product.quantity++;
      print("sdsdsddsdsd   ${product}");
    });
  }
}
