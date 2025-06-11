import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_contants.dart';
import 'package:pizzaapp/utils/constants/text_constant.dart';
import 'package:pizzaapp/widgets/custom_fav_icon.dart';
import 'package:pizzaapp/widgets/textstyle.dart';

class PizzaDetails extends StatefulWidget {
  final PizzaModel pizzaDetail;
  const PizzaDetails({super.key , required this.pizzaDetail});

  @override
  State<PizzaDetails> createState() => _PizzaDetailsState();
}

class _PizzaDetailsState extends State<PizzaDetails> {
  int _counter = 1; 
  void incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  void decrementCounter(){
    setState(() {
    if (_counter>1){
      _counter--;
    }
    });
  }
  @override
  Widget build(BuildContext context) {
   double totalPrice = _counter * widget.pizzaDetail.price;       
    return Scaffold(
       body: Stack(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundcolor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(220),bottomRight: Radius.circular(220))
                ),
                 width: double.infinity,
                 height: MediaQuery.sizeOf(context).height/2,
                 
                 child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 226, 215, 215)
                      ),
                      color: AppColors.backgroundcolor,
                      borderRadius: BorderRadius.circular(200)
                    ),
                    height:380 ,
                    width: 380,
                    
                  ),
                 ),
                 
               ),
              //  Positioned(
              //   bottom: 20,
              //   right: 105,
              //   child: _sizeIcons('M', AppColors.yellow)
              //   ),
                // Positioned(
                //   bottom: 0,
                //   right: 210,
                //   child: _sizeIcons('S', AppColors.backgroundcolor)
                //   ),
               SizedBox(
                height: 45,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                      spacing: 5,
                      children: [
                        SvgPicture.asset(ImageContants.fire),
                        Text(widget.pizzaDetail.name,style: AppTextStyles.text0,),
                     
                      ],
                     ),
                     Row(
                       children: [
                         SvgPicture.asset(ImageContants.star1),
                         Text('5/5'),
                       ],
                     )
                   ],
                 ),
               ),
               SizedBox(
                height: 10,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImageContants.flash),
                        Text(widget.pizzaDetail.description,style: AppTextStyles.text18,),
                      ],
                    ),
                    Text('100%',style: AppTextStyles.text14,)
                  ],
                  
                 ),
               ),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  children: [
                    SvgPicture.asset(ImageContants.star),
                    Text('Ingredients(Customable)'),
                  ],
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row( 
                      spacing: 5,
                      children: [
                       Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.leaf,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.tomato1,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.crab,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.pepepr,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.cucumber,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.onion,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.corn,height: 30,)),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(102, 188, 183, 174),
                      ),
                        child: Image.asset(ImageContants.potato,height: 30,)) 
                      ],
                     ),
                     Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.yellow,
                        border: Border.all(color: AppColors.yellow)
                      ),
                      child: Image.asset(ImageContants.pencil,height: 40,))
                   ],
                 ),
               ),
               SizedBox(
                height: 15,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                      children: [
                        Image.asset(ImageContants.strike),
                        Text('Count')
                      ],
                     ),
                     Row(
                      spacing: 3,
                       children: [
                         Text('\$',style: TextStyle(fontWeight: FontWeight.bold),),
                         Text('Price',style: AppTextStyles.text18,),
                       ],
                     )
                   ],
                 ),
               ),
               SizedBox(
                height: 15,
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text('\$'),
                    Text('\$${totalPrice.toStringAsFixed(2)}',style: AppTextStyles.text0,)
                  ],
                 ),
               ),
               SizedBox(
                height: 40,
               ),
               Container(
            padding: EdgeInsets.symmetric(horizontal: 150,vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.yellow,
            ),
          child: Text(TextConstant.ordernow,style: AppTextStyles.text18),


          )
             ],
             
           ),
           
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
              ),
            ),
             Positioned(
              top: 75,
              right: 60,
              
              child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color:AppColors.backgroundcolor
                      ),
                      color: AppColors.backgroundcolor,
                      borderRadius: BorderRadius.circular(200)
                    ),
                    height:320 ,
                    width: 320,
                    
                  ),
                  
                 ),),
                 Positioned(
              top: 100,
              right: 85,
              
              child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color:AppColors.backgroundcolor
                      ),
                      color: AppColors.backgroundcolor,
                      borderRadius: BorderRadius.circular(200)
                    ),
                    height:280 ,
                    width: 280,  
                  ), 
                 ),),
                 Positioned(
            top: 120,
            height: 230,
            right: 100,
            child:CircleAvatar(
              radius: 120,
              backgroundColor: AppColors.platecolor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(widget.pizzaDetail.image,fit: BoxFit.cover,height: 200,width: 200,),
              ),
            ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 55,left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                  padding:  EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcolor,
                    borderRadius: BorderRadius.circular(18),
                    border:Border.all(
                    color: AppColors.backgroundcolor,
                    width: 2,
                    ),
                  ),
                  child: GestureDetector(
                    onTap:() {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new,size: 18,)),
                 ),
                  ],
                ),
                CustomFavIcon(),
              ],
            ),
          ),
          Positioned(
            top: 460,
            right: 200,
            child:_sizeIcons('M', AppColors.yellow)
             ),
          Positioned(
            top: 420,
            right: 330,
            child:_sizeIcons('S', AppColors.backgroundcolor)
            ),
            Positioned(
              top: 420,
              left: 330,
              child:_sizeIcons('L', AppColors.backgroundcolor)
               ),
            Positioned(
              left: 60,
              bottom: 130,
              child:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.platecolor
                ),
                padding: EdgeInsets.only(left: 20,top: 12,bottom: 12,right: 20),
                child: Text('$_counter'))),
                Positioned(
              left: 20,
              bottom: 130,
              child:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: decrementCounter,
                  child: Icon(Icons.remove)))),
                Positioned(
              left: 100,
              bottom: 130,
              child:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.yellow
                ),
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: incrementCounter,
                  child: Icon(Icons.add)))),
         ],
        
       ),
        
       
    );
  }

  _sizeIcons(String text, color){
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10),
        minimumSize: Size(30, 30),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: AppColors.blackColor,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(width: 1,color: AppColors.backgroundcolor,)
        )
      ),
      onPressed: (){},
      child: Text(
        text,
        style: AppTextStyles.text18,
      ));
  }
}