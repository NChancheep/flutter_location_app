import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       // Image.asset('assets/watpao_cover.png'),
  //       child: ElevatedButton(
  //         child: const Text('Get started'),
  //         onPressed: () {
  //           Navigator.pushNamed(context, '/homePage');
  //         },
  //       ),
  //     ),
  //   );
  // }
  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(     
        body: Center(  
          child: Column(              
            children: <Widget>[  
              Image.asset('assets/watpao_cover.png'),  
            ], 
            
          ),
        ),  
      ),  
    );  
  }  
}
