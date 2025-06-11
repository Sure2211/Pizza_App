import 'package:flutter/material.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';

class CustomFavIcon extends StatelessWidget {
  final double? size;
  final Color? color;
  const CustomFavIcon({super.key,
  this.size,
  this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            padding:  EdgeInsets.all(size ?? 14),
            decoration: BoxDecoration(
              color:color?? AppColors.backgroundcolor,
              borderRadius: BorderRadius.circular(18),
              border:Border.all(
              color:color?? AppColors.backgroundcolor,
              width: 2,
              ),
            ),
            child: Icon(Icons.favorite_outline_outlined,size: 18,),
           );
  }
}