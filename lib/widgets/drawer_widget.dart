import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/user_profiles/foto.png"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/user_profiles/IMG_3849-46.jpg"),
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/user_profiles/foto.png"),
              ),
            ],
            accountName: Text("Oki Firdaus Syah Putra"),
            accountEmail: Text("E41211524"),
          ),
          ListTile(
            leading: const Icon(Icons.folder, color: Colors.black),
            title: const Text('My Files'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.group, color: Colors.black),
            title: const Text('Share with me'),
            onTap: () {
              Navigator.pushNamed(context, '/menu');
            },
          ),
          ListTile(
            leading: const Icon(Icons.schedule, color: Colors.black),
            title: const Text('Recent'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.black),
            title: const Text('Trash'),
            onTap: () {},
          ),
          const Divider(thickness: 2),
          const ListTile(
            title: Text(
              "Test",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.groups, color: Colors.black),
            title: const Text('Family'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
