// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:techno_it/pages/user/slides/course_details.dart';
// import 'package:http/http.dart' as http;

// class Course extends StatefulWidget {
//   const Course({super.key});

//   @override
//   State<Course> createState() => _CourseState();
// }

// class _CourseState extends State<Course> {
//   List<getCourses> courses = [];

//   Future<List<getCourses>> fetchAlbum() async {
//     print('1133');
//     final response =
//         await http.get(Uri.parse('https://api-s-pi.vercel.app/getcourses'));

//     // Appropriate action depending upon the
//     // server response
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       print(response.body);

//       for (var i in data) {
//         getCourses cour = getCourses(course: i['course']);
//         courses.add(cour);
//         print(courses);
//       }

//       return courses;
//     } else {
//       return courses;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Learn",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "My Courses",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: FutureBuilder(
//                   future: fetchAlbum(),
//                   builder: (context, AsyncSnapshot<List<getCourses>> snapshot) {
//                     return ListView.separated(
//                         separatorBuilder: (BuildContext context, int index) =>
//                             SizedBox(height: 16.0),
//                         itemCount: courses.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text('Course : ' +
//                                 snapshot.data![index].course.toString()),
//                             tileColor: Colors.grey[200],
//                             contentPadding: EdgeInsets.all(5),
//                             onTap: () {},
//                           );
//                         });
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class getCourses {
//   String? course;

//   getCourses({this.course});
// }






// it can show the course 
// it can click the course then details will open here