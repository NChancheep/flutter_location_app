import 'package:flutter/material.dart';
import 'package:watpao/src/navbar.dart';
import 'package:watpao/src/map.dart';

class AboutusPage extends StatelessWidget {
  const AboutusPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(  
        
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(  
          child: Column(   
            mainAxisAlignment: MainAxisAlignment.center,           
          children: <Widget>[  
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/chancheep.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Chancheep	Mahacharoensuk",style: 
              TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("FLUTTER DEVELOPER",style: 
              TextStyle(
                color: Colors.red[900],
                fontSize: 10.0,
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

            
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/kantapong.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Kantapong Matangkarat",style: 
              TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text("FLUTTER DEVELOPER",style: 
              TextStyle(
                color: Colors.red[900],
                fontSize: 10.0,
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
            ElevatedButton(
                child: const Text('Our university location',
                    style: TextStyle(color: Colors.white)),
                onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MapPage();
              })),
            },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
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
