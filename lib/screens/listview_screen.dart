import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  late List<Widget> _data = [];
  late int _index = 1;

  void addData({required int index}) {
    setState(() {
      _data.add(
        ListTile(
          title: Text("Data ke $index"),
        ),
      );
      _index++;
    });
  }

  void removeData() {
    setState(() {
      if (_data.length > 0) {
        _data.removeLast();
        _index--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar List View"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  addData(index: _index);
                },
                label: const Text("Tambahkan Data"),
                icon: const Icon(Icons.add),
              ),
              ElevatedButton.icon(
                onPressed: removeData,
                label: const Text("Kurangi Data"),
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
          ..._data,
        ],
      ),
    );
  }
}
