import 'package:flutter/material.dart';

class AboutusPage extends StatelessWidget {
  const AboutusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aboutus Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Aboutus route'),
          onPressed: () {
            Navigator.pushNamed(context, '/aboutusPage');
          },
        ),
      ),
    );
  }
}
