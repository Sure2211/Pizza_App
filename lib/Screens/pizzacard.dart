import 'package:flutter/material.dart';
import 'package:pizzaapp/Screens/widgets/pizza_details.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_contants.dart';
import 'package:pizzaapp/utils/constants/text_constant.dart';
import 'package:pizzaapp/widgets/custom_fav_icon.dart';
import 'package:pizzaapp/widgets/textstyle.dart';

class PizzaCard extends StatelessWidget {
  final PizzaModel model;
  const PizzaCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PizzaDetails(pizzaDetail: model,)));
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: 172,
              // height: 200,
              decoration: BoxDecoration(
                color: AppColors.backgroundcolor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(model.name,
                  style: AppTextStyles.text4,),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Image.asset(ImageContants.flash),
                      Text(model.description,style: AppTextStyles.text10,)
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    model.price,
                    style: AppTextStyles.text15,
                  )
                ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
           top: 15,
           left: 65,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.platecolor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(model.image,fit: BoxFit.cover,),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 35,
          child: CustomFavIcon(size: 10,)
          ),
          Positioned(
            left: 60,
            bottom: 10,
            child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.yellow,
            ),
          child: Text(TextConstant.ordernow,style: AppTextStyles.text100,),


          )),
         
      ],
    );
  }
}