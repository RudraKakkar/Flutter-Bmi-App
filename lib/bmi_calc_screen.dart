
import 'package:bmi_calculator/AgeWeightWidget.dart';
import 'package:bmi_calculator/bmi_result_scree.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/gender_selection_widget.dart';
import 'package:flutter/material.dart';

class BmiCalScreen extends StatefulWidget {
  const BmiCalScreen({super.key});

  @override
  State<BmiCalScreen> createState() => _BmiCalScreenState();
}

class _BmiCalScreenState extends State<BmiCalScreen> {
  bool isMale = true;
  int weight = 100;
  int age = 12;
  double height = 130;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => {
                    isMale = true,
                    setState(() {}),
                  },
                  child: GenderSelectionWidget(
                    width: width,
                    isMale: true,
                    backgroundColor: isMale ? cardColor : backgroundColor,
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    isMale = false,
                    setState(() {}),
                  },
                  child: GenderSelectionWidget(
                    width: width,
                    isMale: false,
                    backgroundColor: !isMale ? cardColor : backgroundColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:cardColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text('${height.toInt()}',style: titleTextStyle.copyWith(fontSize: 50),),
                  SliderTheme(
                    data:SliderThemeData().copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: Colors.pink,
                      overlayColor: Colors.pink.withOpacity(0.5)
                    ),
                    child: Slider(
                      min:100,
                      max:200,
                      value: height,
                      onChanged: (value){
                      height = value;
                      setState(() {
                        
                      });
                            
                    }),
                  )
                ]),
              
                
                ),
              ),
            
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            
            AgeWeightWidget(width: width, title: "weight", val: weight, onRemoveTap: () => addWeight(true), onAddTap: () => addWeight(false)),
        
            AgeWeightWidget(width: width, title: "age", val: age , onRemoveTap: () =>addAge(true), onAddTap: ()=>addAge(false))
          ],
          ),

          GestureDetector(
            onTap : (){
              final bmi = weight / ((height / 100) *(height / 100));
              print(bmi);
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> BmiResult(bmi: bmi,)));
            },
            child: Container(
              width: width,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Calculate BMI",
                  style: titleTextStyle,
                ),
              ),
            ),
          )
          ],
             
        ),
        
      ),
    
      
      
    );
  }

  void addWeight(bool isAdd){
    isAdd ? weight-- : weight++;
    setState(() {
      
    });
  }
  void addAge(bool isAdd){
    isAdd ? age-- : age++;
    setState(() {
      
    });
  }
}

