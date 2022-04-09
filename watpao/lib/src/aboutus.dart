import 'package:flutter/material.dart';

class AboutusPage extends StatelessWidget {
  const AboutusPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(
        backgroundColor: Colors.red[300],

        body: SafeArea(  
          child: Column(   
            mainAxisAlignment: MainAxisAlignment.center,           
          children: <Widget>[  
                        
            ClipRRect(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                color: Colors.red[900],
                child: const Center(
                  child: Text("About Us",style: 
                  TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
          
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/chancheep.jpg'),
            ),
            const Text("Chancheep",style: 
              TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("FLUTTER DEVELOPER",style: 
              TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  Text(
                    "chancheep.mah@student.mahidol.ac.th",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              width: 10.0,
            ),
            
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/kantapong.jpg'),
            ),
            const Text("Kantapong",style: 
              TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("FLUTTER DEVELOPER",style: 
              TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  Text(
                    "kantapong.mat@student.mahidol.ac.th",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          
            // const CircleAvatar(
            //   radius: 50.0,
            //   backgroundImage: AssetImage('assets/kantapong.jpg'),
            // ),
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}
