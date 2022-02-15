import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cover Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Opensss route'),
          onPressed: () {
            Navigator.pushNamed(context, '/homePage');
          },
        ),
      ),
    );
  }
}
