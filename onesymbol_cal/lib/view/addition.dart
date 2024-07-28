import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddPageState();
}

class _AddPageState extends State<Addpage> {
  late TextEditingController numController;
  late String dispayNum;

@override
  void initState() {
    super.initState();
    numController = TextEditingController();

  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          toolbarHeight: 100,
          title: const Text('Addittion Calculator', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        
        ),
        body: 
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  controller: numController,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 40,color: Colors.white ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1, color: Colors.black26)) ,
                    border:InputBorder.none, 
                    filled: true,fillColor: Color.fromARGB(255, 3, 45, 11),
                    
                    ),
                  ),
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      numController.text = numController.text + '1';
                      }, child: Text('1', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '2';
                    }, child: Text('2', style: TextStyle(fontSize: 50, color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    SizedBox(width: 8,),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '3';
                    }, child: Text('3', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                      onPressed: () {
                      numController.text = numController.text.substring(0,numController.text.length-1);
                      }, child: Text('D', style: TextStyle(fontSize: 50, color: Colors.black54),), 
                      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80), backgroundColor: Colors.amber[700]),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      numController.text = numController.text + '4';
                      }, child: Text('4', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '5';
                    }, child: Text('5', style: TextStyle(fontSize: 50, color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    SizedBox(width: 8,),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '6';
                    }, child: Text('6', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      numController.text = '';
                      }, child: Text('C', style: TextStyle(fontSize: 50, color: Colors.black54),), 
                      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80), backgroundColor: Colors.amber[700]),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      numController.text = numController.text + '7';
                      }, child: Text('7', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '8';
                    }, child: Text('8', style: TextStyle(fontSize: 50, color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    SizedBox(width: 8,),
                    ElevatedButton(onPressed: () {
                    numController.text = numController.text + '9';
                    }, child: Text('9', style: TextStyle(fontSize: 50,color: Colors.black54),), style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      plus();
                      }, child: Text('+', style: TextStyle(fontSize: 50, color: Colors.black54),), 
                      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80), backgroundColor: Colors.amber[900]),
                      ),
                    ),
                  ],
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      numController.text = numController.text + '0';
                      }, child: Text('0', style: TextStyle(fontSize: 50, color: Colors.black54),), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)), minimumSize:Size(240,80)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                      cal();
                      }, child: Text('=', style: TextStyle(fontSize: 50,color: Colors.black54),), 
                      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize:Size(80,80), backgroundColor: Colors.amber),
                      ),
                    ),

                  ],
                ), 

            ],
          ),
        ),
      ),
    );
  }



  // -----fucntion-----
  cal() {
      if(numController.text.isEmpty ){
        numController.text = "";
      } 
      else {
        int result = 0;
        List<String> list1 = [];
        list1 = numController.text.split('+');
        for(int i=0; i < list1.length; i++){
          if(list1[i].isEmpty) {
            numController.text = "";
          } 
          else {
          result += int.parse(list1[i]);
          }
        }
        if(result == 0){
          numController.text = "";
        } else {
          numController.text = '$result';
        }
      }
  }

  plus(){
    if(numController.text.contains('+')){
    } else{
      numController.text = numController.text + '+';
    }
  }


}
