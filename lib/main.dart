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
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: "Profile",
          )
        ]),
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.network(
                "https://i0.wp.com/picjumbo.com/wp-content/uploads/wooden-pier-free-image.jpeg?w=600&quality=80"),
            Image.network(
                "https://h5p.open.ubc.ca/wp-content/uploads/h5p/content/24/images/file-6113d5f8845dc.jpeg"),
            Image.network(
                "https://www.shutterstock.com/image-photo/nature-hdr-background-260nw-190456199.jpg"),
          ],
        )),
      ),
    );
  }
}
