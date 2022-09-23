import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 10 / 3,
          ),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/styling-scaffold");
              },
              child: const Text("Styling Scaffold"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/row");
              },
              child: const Text("Row"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/column");
              },
              child: const Text("Column"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/column-row");
              },
              child: const Text("Column Row"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/stateful");
              },
              child: const Text("Stateful Widget"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/listview");
              },
              child: const Text("List View Widget"),
            ),
          ],
        ),
      ),
    );
  }
}
