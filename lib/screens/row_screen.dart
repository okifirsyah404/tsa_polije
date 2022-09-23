import 'dart:math';

import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var randomColor = Random().nextInt(256);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Row"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
                shape: BoxShape.circle),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
                shape: BoxShape.circle),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
                shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
