

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newui/pages/user/achiements/achiementshome.dart';
import 'package:newui/pages/user/events/eventslist.dart';
import 'package:newui/pages/user/internships/interships.dart';
import 'package:newui/pages/user/slides/course_details.dart';
import 'package:newui/pages/user/slides/course_list.dart';
import 'package:newui/pages/user/techupdates/techhome.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final _formKey = GlobalKey<FormState>();

  // CollectionReference users = FirebaseFirestore.instance.collection('users');

  // String? name = FirebaseAuth.instance.currentUser?.displayName;
  // String? email = FirebaseAuth.instance.currentUser?.email;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            // accountName: Text(name ?? "jaymin"),
            // accountEmail: Text(email ?? "NOt ffound"),
            accountName: Text("jaymin"),
            accountEmail: Text("NOt ffound"),
            currentAccountPicture: Stack(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    child: Image.network(
                      'https://img.freepik.com/free-icon/learning_318-232057.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    // top: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   shape: BoxShape.circle,
                      //   color: Colors.white,
                      // ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle_rounded),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    )),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseDetails()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Course"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseList()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Interships"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Interships()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Technical"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TechHome()));
            },
          ),
          ListTile(
            leading: Icon(Icons.military_tech),
            title: Text("Achievments"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AchiementsHome()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Community"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Events"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EventsList()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
