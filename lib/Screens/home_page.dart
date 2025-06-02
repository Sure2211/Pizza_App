import 'package:flutter/material.dart';
import 'package:pizzaapp/Screens/widgets/custom_button.dart';
import 'package:pizzaapp/Screens/widgets/drawer_screen.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_contants.dart';
import 'package:pizzaapp/utils/constants/text_constant.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DrawerScreen()));
        }, child: Text('Skip',style:TextStyle(color: Colors.black),

        ),
        ),
        ],),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               
                Container(
                  
                  width: double.maxFinite,
                  height: MediaQuery.sizeOf(context).height/2,
                  color: Color.fromARGB(255, 234, 230 , 223),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      spacing: 25,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                           Padding(
                             padding: const EdgeInsets.only(bottom: 5),
                             child: Image.asset(ImageContants.pizza),
                           ),
                           Column(
                          children: [
                            Text('Pizza for you',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                          ],
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 130,),
                              child: Row(
                                children: [
                                  Image.asset(ImageContants.flash),
                                   Text('Everyday new pizza',style: TextStyle(fontSize: 20),)
                                ],
                              ),
                              
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140,bottom: 20),
                              child: Row(
                                children: [
                                  Text('eat fresh pizza',style: TextStyle(fontSize: 20),)
                                ],
                              ),
                            )
                          ],
                        ),
                      MyButton(text: TextConstant.signUpwithEmail,
                      color: AppColors.amberColor,onPressed: (){},
                      ),
                      MyButton(text: TextConstant.signUpwithGoogle,
                      color: AppColors.yellow ,onPressed: (){},)
                    ],),
                  ),
                ),
              ],
              
            ),
            Positioned(
              right: 35,
              height: 428,
              child: Image.asset(ImageContants.chef),
              ),
            
          ],
        ),
        

    );
  }
}