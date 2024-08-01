import 'package:flutter/material.dart';

import 'views/HomePage.dart';

void main() {
  runApp(const Newsapp());
}

class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
