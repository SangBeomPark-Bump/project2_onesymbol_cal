class Mul{

//property

late String mul1P;
late String mul2P;


//constructor
Mul(String mul1str, String mul2str){
  mul1P = mul1str;
  mul2P = mul2str;
}

//Function

String mulF(){   // = 버튼
  int num1 = int.parse(mul1P);
  int num2 = int.parse(mul2P);
  int mulresult = num1 * num2;
  return mulresult.toString();
}






}