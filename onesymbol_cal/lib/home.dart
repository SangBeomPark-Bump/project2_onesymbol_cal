import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('onesymbol claculator'),
      ),
      body:Center(
        child: Container(
          width: 400,
          height:500,
          decoration:BoxDecoration(
            border: Border.all(
              width: 10,
              color: Colors.black,),
          borderRadius: BorderRadius.circular(20)
          ) ,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///add button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/add') ,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.black,
                        minimumSize: Size(150, 150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '＋',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ///sub button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/sub'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        minimumSize: Size(150, 150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '－',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // second row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///mul button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/mul'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        minimumSize: Size(150, 150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '×',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ///div button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/div'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        minimumSize: Size(150, 150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '÷',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
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

//Functionds


}