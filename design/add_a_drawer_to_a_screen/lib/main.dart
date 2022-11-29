import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Learn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawerLearnPage(),
    );
  }
}

class DrawerLearnPage extends StatefulWidget {
  const DrawerLearnPage({super.key});

  @override
  State<DrawerLearnPage> createState() => _DrawerLearnPageState();
}

class _DrawerLearnPageState extends State<DrawerLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text('Drawe Header')),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
