import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Hello World',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            )
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          
          child: Column(
            
            children: [
              Text('King Salman'.toLowerCase(),
              
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontStyle: FontStyle.italic
              )),
              Text('Queen Shafira'.toUpperCase(),
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.pinkAccent
              )),

            ],
          ),
        ),
        
      );
  }
}