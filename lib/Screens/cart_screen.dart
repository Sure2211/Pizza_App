import 'package:flutter/material.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/widgets/textstyle.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: ListView.builder(
        itemCount: pizzaCartList.length,
        itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                      Container(
                        height: 90,
                        child: Image.asset(pizzaCartList[index].image,fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pizzaCartList[index].name,style: AppTextStyles.text18.copyWith(fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 5,
                          ),
                          Text(pizzaCartList[index].description),
                        ],
                      )
                    ],
                    ),
                  Text('\$${pizzaCartList[index].price.toStringAsFixed(2)}',style: AppTextStyles.text18.copyWith(fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}