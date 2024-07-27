import 'package:flutter/material.dart';

class DivPage extends StatefulWidget {
  const DivPage({super.key});

  @override
  State<DivPage> createState() => _DivPageState();
}

class _DivPageState extends State<DivPage> {
  // ---properties
  late TextEditingController screenController; //화면에 나오는 글자 컨트롤하는 변수
  late bool screenChanger; // 연산자를 썼을때, 계산 결과를 봤을때 C를 누르지 않고 숫자를 쳐도 숫자가 나오도록 하는 변수. 기본값은 false, ÷나 =을 누르면 true가 된다.
  late double num1; // 나눠지는 숫자
  late double num2; // 나누는 숫자
  late bool divided; // C로 나누기를 누른 상태마저 초기화하기 위한 변수. 기본값은 false이며 나누기 진행시 true, C나 =을 누르면 false가 된다.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenController = TextEditingController();
    screenChanger = false;
    divided = false;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('division'),
      ),
    
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          /// 계산 screen
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,20),
              child: SizedBox(
                width: 300,
                child: TextField(
                  textAlign: TextAlign.end,
                  controller: screenController,
                  readOnly: true,
                ),
              ),
            ),
            //--------------------숫자들----------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                        screenChange(); // 나눴거나 결과값이 나왓다면 스크린을 비우고
                        screenController.text += '1'; //숫자를 추가한다
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '1'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){

                        screenChange();
                        screenController.text += '2';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '2'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20,10, 20),
                  child: ElevatedButton(
                    onPressed: (){

                        screenChange();
                        screenController.text += '3';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '3'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){

                        screenChange();
                        screenController.text += '4';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '4'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                        screenChange();
                        screenController.text += '5';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '5'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20,10, 20),
                  child: ElevatedButton(
                    onPressed: (){

                        screenChange();
                        screenController.text += '6';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '6'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                        screenChange();
                        screenController.text += '7';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '7'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                        screenChange();
                        screenController.text += '8';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '8'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20,10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                        screenChange();
                        screenController.text += '9';
                      
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '9'
                    ),
                  ),
                ),
              ],
            ),
            //--------------------0과 그 외 문자들----------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  //-------------------<=-----------------------------
                  child: ElevatedButton(
                    onPressed: (){
                      if (isNotString()&& // ., 나누기, 빈스크린, 0으로 나눌수 없습니다가 아니라면
                      !screenChanger // 추가로 나누기나 =을 사용해서 사실상 빈스크린이 아니라면
                      )
                      {
                        screenController.text = screenController.text.substring(0,screenController.text.length-1);} // 오른쪽에서 한 칸 지운다
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.backspace,
                      size: 20,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                      screenChange();
                      screenController.text += '0';
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '0'
                    ),
                  ),
                ),
                //----------------.--------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                      if (isNotString()){ //그 외 문자들이 아니라면
                        screenChange();
                        screenController.text += '.';
                      }
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '.'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //----------------C---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20,10, 20),
                  child: ElevatedButton(
                    onPressed: (){ //모든 부울 변수와 스크린을 초기화한다.
                      screenController.text = '';
                      divided = false;
                      screenChanger = false;
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'C'
                    ),
                  ),
                ),
                // --------------나누기------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                      if (isNotString()) // 문자가 아니라면
                        {
                          divCalc(); // num1을 스크린에 저장하고 screenchanger를 true로 바꾸고
                          screenController.text = '÷'; // 나누기를 띄운다
                        }
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '÷'
                    ),
                  ),
                ),
                //-----------------=----------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: ElevatedButton(
                    onPressed: (){
                      if (isNotString()&& //문자가 아니고
                          divided //나눴다면
                        )
                        {
                          resultCalc(); //계산 결과를 띄우고 screenchager를 발동시킨다
                        }
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      minimumSize: Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '='
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ) ,
    );
  }
// ----Functions
divCalc(){ //num1을 저장하는 함수 
  num1 = double.parse(screenController.text);
  screenChanger = true;
  divided = true;
  
}

screenChange(){ // 나누기나 = 을 눌렀음을 확인해서 만약 저번에 눌렀으면 화면을 초기화하고 다시쓰게하는 함수
  if (screenChanger){
    screenController.text = '';
    screenChanger = false;
  }
}
resultCalc(){ //화면의 num2를 받아서 실제로 계산을 해서 보여주는 함수
  if (screenController.text.isNotEmpty){
  num2 = double.parse(screenController.text);
  }
  if (num2 == 0.0){
    screenController.text = '0으로는 나눌 수 없습니다';
  } else{
    screenController.text = '${(num1/num2*100).round()/100}';
  }
  screenChanger = true;
  divided = false;
}

bool isNotString(){ // 스크린이 비어있거나, 숫자로 바꿀 수 없는 문자가 떠있을경우 문자 버튼을 눌러도 효과없게 하는 함수
  if (screenController.text.isNotEmpty){
    if (screenController.text.substring(screenController.text.length-1) == '.' ||
        screenController.text == '÷' ||
        screenController.text == '0으로는 나눌 수 없습니다'){
      return false;
    }else{
      return true;
    }
  }else{
    return false;
  }
}


}//ENd