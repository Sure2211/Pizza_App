import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizzaapp/Screens/cart_screen.dart';
import 'package:pizzaapp/Screens/pizzacard.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_contants.dart';
import 'package:pizzaapp/utils/constants/text_constant.dart';
import 'package:pizzaapp/widgets/custom_fav_icon.dart';
import 'package:pizzaapp/widgets/textstyle.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(ImageContants.logo),
            Row(
              children: [
                Icon(Icons.location_on_outlined,color: AppColors.amberColor,size: 12,),
                Text(TextConstant.cairo,style: AppTextStyles.text11,),
                Image.asset(ImageContants.flag),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
           Stack(
             children: [
               GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> CartScreen()
                  ));
                },
                child: CustomFavIcon()),
               Positioned( child:CircleAvatar(
                radius: 10,
                backgroundColor: AppColors.yellow,
                child: Text('${pizzaCartList.length}',style: AppTextStyles.text14,),
               ) )
             ],
           ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              
                Container(
                  margin: EdgeInsets.only(top: 30, right: 80, left: 80),
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                     color: Colors.amber,
                  ),
                 
                ),

                Container(
                  margin: EdgeInsets.only(top: 30, right: 55, left: 55),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                     color: Colors.amber
                  ),
                 
                ),
                
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(left: 15,top: 30,right: 15),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundcolor.withValues(alpha: 1),
                      borderRadius: BorderRadius.circular(30)
                      ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Row(
                            spacing: 5,
                            children: [
                              SvgPicture.asset(ImageContants.fire),
                              Text(TextConstant.eatfreshpizza,style: AppTextStyles.text18,),
                              SizedBox(width: 15,),
                              Image.asset(ImageContants.tomato),
                            ],
                          ),
                          
                          ),
                      Row(
                        spacing: 5,
                        children: [
                          Image.asset(ImageContants.flash),
                          Text(TextConstant.fastdelivery,style: AppTextStyles.text11,),
                          SizedBox(width: 100,),
                          Image.asset(ImageContants.basil),
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          SvgPicture.asset(ImageContants.star),
                          Text(TextConstant.nearforyou,style: AppTextStyles.text12,),
                          SizedBox(width: 30,),
                          Image.asset(ImageContants.shallot),
                        ],
                      ) ,   
                      ],
                      
                    ),
                  ),
                ],
              ),
               Positioned(
                top: 5,
                right: 20,
                child: Image.asset(ImageContants.woman)),
            ],
          ),
          

          SizedBox(
            height: 25,
            
          ),

          _searchSection(),
          
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 100),
          //       decoration: BoxDecoration(
          //         color: AppColors.backgroundcolor,
          //         borderRadius: BorderRadius.circular(30),
          //       ),
          //       margin: EdgeInsets.only(left: 20),
          //       child: Row(
          //         spacing: 15,
          //         children: [
          //           Icon(Icons.search),
          //           Text(TextConstant.searchfor,style: AppTextStyles.text1,),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       padding: EdgeInsets.all(10),
          //       margin: EdgeInsets.only(right: 25),
          //       decoration: BoxDecoration(
          //         color: AppColors.backgroundcolor,
          //         borderRadius: BorderRadius.circular(30)
          //       ),
          //       child: Image.asset(ImageContants.fliter,height: 25,width: 25,))

          //   ],
          // )
          //All pizza cards Gridview section
          SizedBox(
            height:50,
          ),
         Expanded(
          child: GridView.builder(
            itemCount: pizzaData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7), 
            itemBuilder: (context, int index){
              
              return PizzaCard(model: pizzaData[index],);
            }
            )),
          //  child: GridView.count(
          //   childAspectRatio: 0.7,
          //   mainAxisSpacing: 0,
          //   crossAxisSpacing: 0,
          //   crossAxisCount: 2,
          //   padding: EdgeInsets.only(top: 20),
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 172,
          //       child: PizzaCard(),
          //     ),
          //     SizedBox(
          //       height: 200,
          //       width: 172,
          //       child: PizzaCard(),
          //     ),
          //     SizedBox(

          //       height: 200,
          //       width: 172,
                
          //       child: PizzaCard(),
          //     ),
          //     SizedBox(
          //      height: 200,
          //       width: 172,
               
          //      child: PizzaCard(),
          //     ),
          //   ],),
        //  ),

        ],
      ),
    );
  }

  _searchSection(){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                Expanded(
                  flex: 5,
                  child: TextFormField(
                    cursorColor: AppColors.grey.withValues(alpha: 0.3),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: TextConstant.searchfor,
                      hintStyle: AppTextStyles.text1,
                      filled: true,
                      fillColor: AppColors.backgroundcolor,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: AppColors.backgroundcolor.withValues(alpha: 0.3),width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(

                      )
                    ),
                  )),
                  SizedBox(width: 18,),
                Expanded(child:  Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.backgroundcolor,
                borderRadius: BorderRadius.circular(18),
                border:Border.all(
                color: AppColors.backgroundcolor,
                width: 2,
                ),
              ),
              child: Image.asset(ImageContants.fliter,height: 25,width: 25,),
                         ),)
                ],
              ),
            );
          }
}

// ignore: camel_case_types
// class customfavicon extends StatelessWidget {
//   const customfavicon({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      padding: const EdgeInsets.all(14),
//      decoration: BoxDecoration(
//        color: AppColors.amberColor.withValues(alpha: 0.2),
//        borderRadius: BorderRadius.circular(18),
//        border:Border.all(
//        color: AppColors.grey.withValues(alpha: 0.3),
//        width: 2,
//        ),
//      ),
//      child: Icon(Icons.favorite_outline_outlined,size: 18,),
//     );
//   }
// }



// class PizzaCard extends StatelessWidget {
//   const PizzaCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal:0,vertical: 40),
//           child: Container(
//             margin: EdgeInsets.all(20),
//             width: 172,
//             height: 200,
//             decoration: BoxDecoration(
//               color: AppColors.backgroundcolor,
//               borderRadius: BorderRadius.circular(18),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(TextConstant.pepperoni,style: AppTextStyles.text4,),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
                  
//                   children: [
//                     Image.asset(ImageContants.flash),
//                     Text(TextConstant.pepperoniinfo,style: AppTextStyles.text10,)
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   '\$29',
//                   style: AppTextStyles.text15,
//                 )
//               ],
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//            top: 15,
//            left: 65,
//           child: CircleAvatar(
//             radius: 40,
//             backgroundColor: AppColors.platecolor,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset(ImageContants.pizzacheese1,fit: BoxFit.cover,),
//             ),
//           ),
//         ),
//         Positioned(
//           right: 15,
//           top: 35,
//           child: CustomFavIcon(size: 10,)
//           ),
//           Positioned(
//             left: 60,
//             bottom: 50,
//             child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: AppColors.yellow,
//             ),
//           child: Text(TextConstant.ordernow,style: AppTextStyles.text100,),


//           )),
         
//       ],
//     );
//   }
// }