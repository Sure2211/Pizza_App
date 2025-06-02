import 'package:pizzaapp/utils/constants/image_contants.dart';
import 'package:pizzaapp/utils/constants/text_constant.dart';

class PizzaModel {
  String name;
  String description;
  String image;
  String price;

  PizzaModel({
   required this.name,
   required this.description,
   required this.image,
   required this.price,
  });
   
}

final List<PizzaModel> pizzaData = [
  PizzaModel(name: TextConstant.pepperoni,
   description: TextConstant.pepperoniinfo, 
   image: ImageContants.pizza,
   price: '\$29'),
   
   PizzaModel(name: TextConstant.pizzacheese, 
   description: TextConstant.pizzacheeseinfo, 
   image:ImageContants.pizzacheese1,
    price: '\$23'),

    PizzaModel(name: TextConstant.peppypaneer,
     description: TextConstant.pepperoniinfo,
      image: ImageContants.peppypaneer,
       price: '\$15'),

   PizzaModel(name: TextConstant.mexicanpizza,
    description: TextConstant.pizzacheeseinfo,
     image: ImageContants.mexicanpizza, 
     price: '\$33'),
];

