import 'package:flutter/material.dart';
import 'package:flutter_application_drawer/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.card_travel,
                      size: 60,
                      color: const Color.fromARGB(255, 8, 8, 8),
                    ),
                    TextButton(onPressed: () {}, child: Icon(Icons.close)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Images"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settigns"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: const Color.fromARGB(255, 152, 25, 236),
          elevation: 10,
          centerTitle: true,
        ),
        body: AppBody(),
      ),
    );
  }
}
