import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Get started'),
          onPressed: () {
            Navigator.pushNamed(context, '/homePage');
          },
        ),
      ),
    );
  }
}
