import 'package:flutter/material.dart';
import 'package:newui/components/blogs/bloghome.dart';
import 'package:newui/components/user/internship_section/internship.dart';
import 'package:newui/components/user/slides/course.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Jaymin Patel'),
              accountEmail: Text('jaymin@gmail.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Course"),
            onTap: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Course()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Internship"),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Internship()));
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Blogs"),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => BlogHome()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_rounded),
            title: Text("Request"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_center_sharp),
            title: Text("Help"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sign Out"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
