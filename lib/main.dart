import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

///Algorithm to make a stateful Sum App
///Step-1: Stateful Widget
///Step-2: UI/View
///Step-3: Input Type -> onChanged(){} callback Function will work...
///Step-4: Add -> Action Button

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sum App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageUI();
  }
}

class HomePageUI extends State<HomePage>{
  double summation= 0;
  Map<String,double> formValue= {"Num1":0,"Num2":0,"Num3":0};
  @override
  Widget build(BuildContext context) {
    inputOnChanged(inputKey,inputValue){
      formValue.update(inputKey, (value) => double.parse(inputValue));
    }
    addAllNumber(){
      summation=formValue["Num1"]!+formValue["Num2"]!+formValue["Num3"]!;
      setState(() {});
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Sum= ${summation.toString()}",
                style: HeadLineTextStyle(),
              ),
              const SizedBox(height: 20),
              TextFormField(
                  decoration: AppInputStyle("First Number"),
                  onChanged: (value){
                    ///set value to num1
                    inputOnChanged("Num1", value);
                  }),
              const SizedBox(height: 10),
              TextFormField(
                  decoration: AppInputStyle("Second Number"),
                  onChanged: (value){
                    ///set value to num2
                    inputOnChanged("Num2", value);
                  },
              ),
              const SizedBox(height: 10),
              TextFormField(
                  decoration: AppInputStyle("Third Number"),
                  onChanged: (value){
                    ///set value to num3
                    inputOnChanged("Num3", value);
                  },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  addAllNumber();
                },child: const Text("Add"),
                  style: AppButtonStyle(),
                ),
              )
            ],
          ),
      ),
    );
  }
}