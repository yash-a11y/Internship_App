import 'package:flutter/material.dart';

import 'course_details.dart';


class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Course'),
          automaticallyImplyLeading: false,
          ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Learn",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "My Courses",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.play_circle_fill,
              ),
              title: Text(
                'Flutter Development',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text('Introduction to Flutter'),
              tileColor: Colors.grey[200],
              onTap: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseDetails()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.play_circle_fill),
              title: Text(
                'Android Development',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text('Introduction to Android'),
              tileColor: Colors.grey[200],
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseDetails()));
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
