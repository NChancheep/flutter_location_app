import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(     
        body: Center(  
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/watpao_cover.png'),
          const SizedBox(height: 30),
          ElevatedButton(
            child: const Text('Get started'),
          onPressed: () {
            Navigator.of(context).pushNamed('/homePage');
          },
          ),
          ElevatedButton(
            child: const Text('About us'),
          onPressed: () {
            Navigator.of(context).pushNamed('/aboutusPage');
          },
          ),
        ],
      ),
        ),  
      ),  
    );  
  }  
}
