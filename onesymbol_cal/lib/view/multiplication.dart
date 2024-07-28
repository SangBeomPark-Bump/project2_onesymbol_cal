import 'package:flutter/material.dart';
import 'package:onesymbol_cal/VM/mulvm.dart';

class MulPage extends StatefulWidget {
  const MulPage({super.key});

  @override
  State<MulPage> createState() => _MulPageState();
}

class _MulPageState extends State<MulPage> {
late TextEditingController calMulcontroller;
late  String num1;
late  String num2;

@override
  void initState() {
    super.initState();
    calMulcontroller = TextEditingController();
    num1 = "";
    num2 = "";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('multiplication'),
      ),

            body: Center(
        child:Column(
          children: [
            TextField(
              textAlign:TextAlign.end,
              readOnly: true,
              controller: calMulcontroller,
              decoration: const InputDecoration(
                hintText: "0"
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: (){
                  resetClick();
                },
                child: const Text("초기화")
                ),
            ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "1";
                    }
                    ,
                    child: const Text("1")
                    ),
                  
                              ElevatedButton(
                  onPressed: (){
                      numX();
                      calMulcontroller.text += "2";
                      },
                  child: const Text("2")
                  ),
                  
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "3";
                    
                    },
                    child: const Text("3")
                    ),
                ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                      numX();
                      calMulcontroller.text += "4";
                  },
                  child: const Text("4")
                  ),
                
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "5";

                    },
                    child: const Text("5")
                    ),
                
                ElevatedButton(
                  onPressed: (){
                      numX();
                      calMulcontroller.text += "6";

                  },
                  child: const Text("6")
                  ),
              ],
            ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "7";
                    },
                    child: const Text("7")
                    ),
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "8";
                    },
                    child: const Text("8")
                    ),
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      calMulcontroller.text += "9";
                    
                    },
                    child: const Text("9")
                    ),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //*
                  ElevatedButton(
                    onPressed: (){
                      xClick(); //num1 = controller
                      calMulcontroller.text = "X";
                      
                    },
                    child: const Text("X")
                    ),
                    //0
                  ElevatedButton(
                    onPressed: (){
                      numX();
                      
                      calMulcontroller.text += "0";
                      
                    },
                    child: const Text("0")
                    ),
                    //=
                  ElevatedButton(
                    onPressed: (){
                      beforecalR();
                      calResult();
                      num1 = "";
                      num2 = "";
                      },
                    child: const Text("=")
                    ),
                ],
              ),

          ],
        ) ,
        ),

    );
  }




  //Function

String numX(){
if(calMulcontroller.text == "X"){
  calMulcontroller.text = "";
}return calMulcontroller.text;
}

String beforecalR(){
  num2 = calMulcontroller.text; 
  return num2;
}

String xClick(){
  num1 = calMulcontroller.text;
  return num1;
}


  String calResult() {
    if (calMulcontroller.text.trim().isEmpty ||
        calMulcontroller.text.trim().isEmpty) {
      errorSnackbar();
      }else{
        Mul calR = Mul(beforecalR(),xClick());
        calMulcontroller.text = calR.mulF();
      }return calMulcontroller.text;
        }

resetClick(){
  calMulcontroller.text = "";
  num1 = "";
  num2 = "";
}


  errorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("숫자를 입력하세요"),
        backgroundColor: Colors.red,
      ),
    );
  }

}//End