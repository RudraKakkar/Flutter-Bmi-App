import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class AgeWeightWidget extends StatelessWidget {
  const AgeWeightWidget({
    super.key,
    required this.width, required this.title, required this.val, required this.onRemoveTap, required this.onAddTap,
    

  });

  final double width;
  final String title;
  final int val;
  final Function() onRemoveTap;
  final Function() onAddTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.3,
      height: width * 0.3,
      decoration: BoxDecoration(color: cardColor,
      borderRadius: BorderRadius.circular(15)),
      child:  Column(
        children: [
           Text("$title",style:titleTextStyle),
          Text("$val",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          
          Row(
    
           mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              
              GestureDetector(


                onTap: onRemoveTap,
                child: Container(
                width:50,
                height : 50,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size:20
                ),
                decoration: BoxDecoration(color:Colors.black12,
                borderRadius:BorderRadius.circular(100)
                )
                ),
              ),


              GestureDetector(

                onTap: onAddTap,
                child: Container(
                  
                width:50,
                height : 50,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size:20
                ),
                decoration: BoxDecoration(color:Colors.black12,
                shape: BoxShape.circle
                )
                ),
              ),
              
            ],
            
          ),
          
        ],
      ),
      
    );
  }
}