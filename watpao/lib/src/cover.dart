import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(    
        backgroundColor: Colors.red[300], 
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.red[900],
        ),
        body: Center(  
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset('assets/watpao_cover.png'),
                const SizedBox(height: 30),
                RaisedButton(
                  child: const Text('Get started'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/homePage');
                  },
                  color: Colors.red[900],
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  child: const Text('About us'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/aboutusPage');
                  },
                  color: Colors.red[900],
                  textColor: Colors.white,
              ),
            ],
          ),
        ),  
      ),  
    );  
  }  
}

