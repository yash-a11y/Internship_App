import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Details ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                subtitle: Text(
                  'Flutter is a popular mobile app development framework that allows developers to build high-quality, cross-platform apps with ease. With its easy-to-use interface and powerful features, its no wonder why Flutter has become a go-to tool for many app developers. If you are interested in learning more about Flutter, there are plenty of courses available to help you get started. Here are a few benefits of taking a Flutter course:',
                  style: TextStyle(fontSize: 20, height: 1.3),
                ),
                tileColor: Colors.grey[200],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Benefits',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                subtitle: Text(
                  "Cross-platform development: Flutter allows you to create mobile apps for both Android and iOS platforms with a single codebase, which means you don't have to write separate code for each platform. This can save development time and reduce costs.",
                  style: TextStyle(fontSize: 20, height: 1.3),
                ),
                tileColor: Colors.grey[200],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Enrol Now"))
            ],
          ),
        ),
      ),
    );
  }
}
