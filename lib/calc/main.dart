import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: calc()
  ));
}
class calc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>mystate();
  }

class mystate extends State{
  String result="";
  String lhs="";
  String saveoprator="";

  Widget build(BuildContext context) =>Scaffold(

appBar: AppBar(title: Text("calc"),
),
      body: Column(
        children: [
          Expanded(child:
          Center(
              child:   Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    Expanded(
                      child:Text(result,style: TextStyle(fontSize: 32),),)])),
          ),
          Expanded(child:  Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              calcbutton(digit: "%",onclik:onoprator),
              calcbutton(digit: "√",onclik:onclik),
              calcbutton(digit: "AC",onclik:deleteall),
              calcbutton(digit: "DEL",onclik:deleteLast),
            ],
          ),),
          Expanded(child:  Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              calcbutton(digit: "7",onclik:onclik),
              calcbutton(digit: "8",onclik:onclik),
              calcbutton(digit: "9",onclik:onclik),
              calcbutton(digit: "+",onclik:onoprator),
            ],
          ),),
          Expanded(child:  Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              calcbutton(digit: "4",onclik:onclik),
              calcbutton(digit: "5",onclik:onclik),
              calcbutton(digit: "6",onclik:onclik),
              calcbutton(digit: "-",onclik:onoprator),
            ],
          ),),
          Expanded(child:  Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              calcbutton(digit: "1",onclik:onclik),
              calcbutton(digit: "2",onclik:onclik),
              calcbutton(digit: "3",onclik:onclik),
              calcbutton(digit: "X",onclik:onoprator),
            ],
          ),),
          Expanded(child:  Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              calcbutton(digit: ".",onclik:onclik),
              calcbutton(digit: "0",onclik:onclik),
              calcbutton(digit: "=",onclik:onEquail),
              calcbutton(digit: "/",onclik:onoprator),
            ],
          ),),
        ],
      ),



    );
  void onclik(String digit){

    if(digit=="."&&result.contains(".")){
      result="MAthErroe";
      setState(() {});
    }
    else if (digit == "√") {
      if (result.isNotEmpty) {
        double value = double.parse(result);
        if (value >= 0) {
          result = sqrt(value).toString();
        } else {
          result = "MathError";
        }
      }
      setState(() {});
    }
    else{
    result+=digit;
    setState(() {});
    }
  }
  void onoprator(String opator){
    if(saveoprator.isEmpty){
  lhs=result;
  saveoprator=opator;
  result="";
  setState(() {});
}
else{
  lhs=calculate(result, lhs, saveoprator);
  saveoprator=opator;
}


  }
  void onEquail(_){
    result=calculate(result, lhs, saveoprator);
    lhs="";
    saveoprator="";
    setState(() {});

  }
  String calculate(String result, String lhs, String saveOperator) {
    try {
      double n1 = double.parse(lhs);
      double n2 = double.parse(result);
      if (saveOperator == "+") {
        return "${n1 + n2}";
      } else if (saveOperator == "-") {
        return "${n1 - n2}";
      } else if (saveOperator.toLowerCase() == "x") {
        return "${n1 * n2}";
      }else if (saveOperator =="%"){
        return "${n1 % n2}";
    }else if (saveOperator == "/") {
        if (n2 != 0) {
          return "${n1 / n2}";
        } else {
          return "MathError";
        }
      }
    } catch (e) {
      return "MathError";
    }
    return "MathError";

  }
  void deleteall(_){
    result="";
    lhs="";
    saveoprator="";
    setState(() {});
  }
  void deleteLast(_) {
    if(result=="MathError"){
      deleteall("");
    }
    if (result.isNotEmpty) {
      result = result.substring(0, result.length - 1);
      setState(() {});
    }
  }

}

class calcbutton extends StatelessWidget {
final String digit;
final Function onclik;
  const calcbutton({super.key,required this.digit,required this.onclik});

  @override
  Widget build(BuildContext context) {
    return Expanded(child:Container(
      margin: EdgeInsets.all(8),
      child:  ElevatedButton(onPressed: (){
        onclik(digit);
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0x804e68a0),
        ),
     child: Text(digit),),
    ));
  }
}


  // ... (rest of your existing code)
