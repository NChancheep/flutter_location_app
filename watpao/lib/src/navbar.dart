import 'package:flutter/material.dart';
import 'package:watpao/src/aboutus.dart';

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
                    DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/wat_arun.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('k'),
            onTap: () => {},
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
