import 'package:flutter/material.dart';

class AboutusPage extends StatelessWidget {
  const AboutusPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('About us page'),  
        ),  
           
        body: Center(  
          child: Column(              
            children: <Widget>[  
              Image.asset('assets/chancheep.jpg'),  
              Image.asset('assets/kantapong.jpg'),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}
