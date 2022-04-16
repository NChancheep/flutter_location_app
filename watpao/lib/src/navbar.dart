import 'package:flutter/material.dart';
import 'package:watpao/src/aboutus.dart';
import 'package:watpao/src/cover.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image:
                    DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/mu.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('First page'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CoverPage();
              })),
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('About us'),
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
