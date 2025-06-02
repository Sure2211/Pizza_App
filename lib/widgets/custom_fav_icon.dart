import 'package:flutter/material.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';

class CustomFavIcon extends StatelessWidget {
  final double? size;
  const CustomFavIcon({super.key,
  this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            padding:  EdgeInsets.all(size ?? 14),
            decoration: BoxDecoration(
              color: AppColors.amberColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(18),
              border:Border.all(
              color: AppColors.grey.withValues(alpha: 0.3),
              width: 2,
              ),
            ),
            child: Icon(Icons.favorite_outline_outlined,size: 18,),
           );
  }
}