import 'package:flutter/material.dart';
import 'package:watpao/src/aboutus.dart';
import 'package:watpao/src/cover.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red[900],
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Wat-Pao',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image:
                    DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/mu.jpg'))),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.white
            ),
            title: const Text('First page',style:TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CoverPage();
              })),
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_box,
              color: Colors.white,
              ),
            title: const Text('About us',style:TextStyle(color: Colors.white),),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AboutusPage();
              })),
            },
          ),
          
        ],
      ),
    );
  }
}
