import 'package:flutter/material.dart';

class SubPage extends StatefulWidget {
  const SubPage({super.key});

  @override
  State<SubPage> createState() => SubPageState();
}

class SubPageState extends State<SubPage> {

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  
  String result = '';                  // 계산 결과를 저장할 변수
  bool isFirstNumber = true;           // 현재 입력 중인 숫자가 첫 번째 숫자인지 여부를 나타내는 변수

  // 뺄셈을 수행
  void subtract() {
    if (num1Controller.text.trim().isEmpty || num2Controller.text.trim().isEmpty) {
      errorSnackBar(); // 숫자가 입력되지 않으면 에러 메시지 표시
      return;
    }

    final double num1 = double.tryParse(num1Controller.text) ?? 0; // 첫 번째 숫자를 가져옴
    final double num2 = double.tryParse(num2Controller.text) ?? 0; // 두 번째 숫자를 가져옴
    final double subtractionResult = num1 - num2; // 두 숫자를 뺀 결과를 계산

    setState(() {
      result = subtractionResult.toString();     // 계산 결과를 문자열로 변환하여 result에 저장
    });
  }

  // 키패드 입력을 처리
  void onKeyPress(String value) {
    setState(() {
      if (isFirstNumber) {
        num1Controller.text += value; // 첫 번째 숫자를 입력 num1Controller에 값을 추가
      } else {
        num2Controller.text += value; // 두 번째 숫자를 입력 num2Controller에 값을 추가
      }
    });
  }

  // 계산기 초기화 작업
  void clear() {
    setState(() {
      num1Controller.clear();          // 첫 번째 숫자 입력을 초기화
      num2Controller.clear();          // 두 번째 숫자 입력을 초기화
      result = '';                     // 결과 문자열 초기화
      isFirstNumber = true;            // 첫 번째 숫자를 입력 중으로 상태를 변경
    });
  }

  // 첫 번째 숫자와 두 번째 숫자 입력 상태를 전환하는 기능
  void toggleNumberInput() {
    setState(() {
      isFirstNumber = !isFirstNumber; // 첫번째 숫자와 두번째 숫자를 전환 할 수 있게 해주는 변수추가
    });
  }

  // 에러 스낵바 표시 함수
  void errorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요.'), // 에러 메시지 텍스트
        duration: Duration(seconds: 2), // 스낵바 표시 시간
        backgroundColor: Colors.red, // 스낵바 배경 색상
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뺄셈 계산기'),                       // 앱바 제목 설정
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),            //16픽셀 패딩 적용
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            TextField(
              controller: num1Controller,             // 첫 번째 숫자 컨트롤러에 연결
              decoration: InputDecoration(
                labelText: '첫번째 숫자',                 // 첫 번째 숫자 입력 필드 레이블 설정
                border: OutlineInputBorder(),          // 외곽선 있는 입력 필드 스타일 적용
              ),
              readOnly: true,                          // 읽기 전용으로 설정
            ),
            SizedBox(height: 16.0),                    // 16픽셀 높이의 간격 추가
            TextField(
              controller: num2Controller,             // 두 번째 숫자 컨트롤러 연결
              decoration: InputDecoration(
                labelText: '두번째 숫자',                 // 두 번째 숫자 입력 필드 레이블 설정
                border: OutlineInputBorder(),          // 외곽선 있는 입력 필드 스타일 적용
              ),
              readOnly: true,                          // 읽기 전용으로 설정
            ),
            SizedBox(height: 16.0),                    // 16픽셀 간격 추가
            ElevatedButton(
              onPressed: subtract,                    // 버튼이 눌렸을 때 계산하기
              child: Text('계산하기'),                   // 버튼 텍스트 설정
            ),
            SizedBox(height: 16.0),                    // 16픽셀 간격 추가
            Text(
              '결과: $result', // 결과 텍스트 표시
              style: TextStyle(fontSize: 20.0),        // 텍스트 크기 설정
            ),
            SizedBox(height: 16.0),                    // 16픽셀 간격 추가
            buildKeypad(),                            // 키패드 생성 및 추가
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: clear,                             // 버튼이 눌렸을 때 초기화
        child: Icon(Icons.refresh),                    // 아이콘 설정하기
        tooltip: 'Reset',                              // 초기화 텍스트 설정
      ),
    );
  }

  // 키패드 위젯
  Widget buildKeypad() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,                           // 3개의 열을 키패드 추가
          childAspectRatio: 2,                         // 가로 세로 비율 설정
        ),
        itemCount: 12,                                 // 12개의 항목 생성
        itemBuilder: (context, index) {
          String value;
          if (index < 9) {
            value = (index + 1).toString();            // 1부터 9까지 숫자 설정
          } else if (index == 9) {
            value = '0';                               // 10번째 항목은 '0'으로 설정
          } else if (index == 10) {
            value = 'C';                               // 11번째 항목은 'C'로 설정
          } else {
            value = isFirstNumber ? 'Next' : 'Prev';   // 12번째 항목은 '다음' 또는 '전 단계'로 설정
          }

          return Padding(
            padding: const EdgeInsets.all(4.0),        // 각 버튼에 4픽셀 패딩 추가
            child: ElevatedButton(
              onPressed: () {
                if (value == 'C') {
                  clear();                            // 'C' 버튼이 눌렸을 때 초기화 기능 사용
                } else if (value == 'Next' || value == 'Prev') {
                  toggleNumberInput(); // 'Next' 또는 'Prev' 버튼이 눌렸을 때 toggleNumberInput 변수 사용
                } else {
                  onKeyPress(value);                  // 숫자 버튼이 눌렸을 때 키보드 위젯 호출
                }
              },
              child: Text(value),                      // 버튼 텍스트 설정
            ),
          );
        },
      ),
    );
  }
}   // End
