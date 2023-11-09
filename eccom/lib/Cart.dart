import 'package:eccom/List.dart';
import 'package:eccom/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final List<Model> cartItems;

  CartScreen({required this.cartItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // final List<Model> cartItemsView = [];
//int totalcost=0;
  void removeduplicacy() {
    var et = <String>{};
    uniquelist = cartItems.where((element) => et.add(element.id)).toList();

    print("hhhhhhhhhhhh=====>>>  $et");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    removeduplicacy();
    total();
  
    // List<YourModel> uniqueModels = yourModelList
    //   .where((model) => yourModelSet.add(model) ? true : false)
    //   .toList()

// var seen = Set<String>();
//     List<Model> uniquelist = cartItems.where((country) => seen.add()).toList()

    // print("sssss length-----${ widget.cartItems.length}");
    // print("sssss rf-----${cartItems.first.id}");
//     for(int i=0;i< widget.cartItems.length;i++){
//    List<String> ?ID ;
//       if(widget.cartItems[i].id==)
// //print("sssss${ widget.cartItems[i].id}");
//     };
    // cartItemsView.add(value)
  }

  cost(int index) {
    int cost = 0;
    cost = uniquelist[index].price * uniquelist[index].quantity;
    return cost;
  }
  int  totalcost = 0;


 void total() {   totalcost = 0; 
    for (int i = 0; i < uniquelist.length; i++) {

       int itemcost = uniquelist[i].price * uniquelist[i].quantity;
       totalcost=totalcost+itemcost;
      print("Total price  $total");
    
    }

      setState(() {
        
      });

  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: uniquelist.length,
        itemBuilder: (context, index) {
          print("index  $index");
          int effcost = cost(index);
          // chekid(widget.cartItems[index].id,index);
          return uniquelist[index].quantity == 0
              ? SizedBox()
              : ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(uniquelist[index].image),
                  ),
                  title: Text(uniquelist[index].name.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              total();
                              uniquelist[index].quantity++;
                            });
                            //    uniquelist.addAt(index);

                            // setState(() {
                            //   uniquelist[index].quantity + 1;
                            // });
                          },
                          icon: Icon(Icons.add_box_rounded)),
                      Text(uniquelist[index].quantity.toString()),
                      IconButton(
                          onPressed: () {
                            setState(() {});
total();
                            if (uniquelist[index].quantity > 0) {
                              uniquelist[index].quantity -= 1;
                            }
                            if (uniquelist[index].quantity == 0) {
                              // uniquelist[index].quantity -= 1;
                              uniquelist.removeAt(index);
                            } else {
                              //  uniquelist.removeAt(index);
                            }
                          },
                          icon: Icon(Icons.indeterminate_check_box_rounded)),
                      Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        "Rs." + effcost.toString(),
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ],
                  ),
                );
        },
      ),
      bottomSheet: Container(
        color: Colors.grey,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 20),
            ),
            Text(totalcost.toString())
          ],
        ),
      ),
    );
  }
}
