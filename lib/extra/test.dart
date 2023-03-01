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
  

 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //title: Text('Course'),
//         automaticallyImplyLeading: false,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(25),
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
//             ListTile(
//               leading: Icon(
//                 Icons.play_circle_fill,
//               ),
//               title: Text(
//                 'Flutter Development',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               subtitle: Text('Introduction to Flutter'),
//               tileColor: Colors.grey[200],
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => CourseDetails()));
//               },
//             ),
//             SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// SingleChildScrollView(
//         padding: EdgeInsets.all(25),
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
//                     return ListView.builder(
//                         itemCount: courses.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text('Notes ID : ' +
//                                 snapshot.data![index].course.toString()),
//                             onTap: () {},
//                           );
//                         });
//                   }),
//             )
//             // ListTile(
//             //   leading: Icon(
//             //     Icons.play_circle_fill,
//             //   ),
//             //   title: Text(
//             //     'Flutter Development',
//             //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             //   ),
//             //   subtitle: Text('Introduction to Flutter'),
//             //   tileColor: Colors.grey[200],
//             //   onTap: () {
//             //     Navigator.push(
//             //         context, MaterialPageRoute(builder: (context) => CourseDetails()));
//             //   },
//             // ),
//             // SizedBox(
//             //   height: 20,
//             // ),
//           ],
//         ),
//       ),


// it can show the course 
// it can click the course then details will open here