import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newui/pages/user/slides/course_details.dart';

import '../../../utills/app_styles.dart';


class CourseList extends StatefulWidget {
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    ); // this controller define how many tabs to represent

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, inner) => [
          SliverAppBar(
            backgroundColor: primary1,
            expandedHeight: 100,
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Courses",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Container(
                  width: 100,
                  child: Tab(
                    text: 'Courses',
                  ),
                ),
                Container(width: 100, child: Tab(text: 'My Courses')),
              ],
            ),
          )
        ],
        body: TabBarView(
          controller: _tabController,
          children: [Course(), MyCourse()],
        ),
      ),
    );
  }
}

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  List<getCourses> courses = [];

  Future<List<getCourses>> fetchAlbum() async {
    print('1133');
    final response = await http.get(Uri.parse(
        'https://api-p33oei38z-chiragbhanderi1.vercel.app/getcourses'));

    // Appropriate action depending upon the
    // server response
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      print(response.body);

      for (var i in data) {
        getCourses cour = getCourses(course: i['course']);
        courses.add(cour);
        print(courses);
      }

      return courses;
    } else {
      return courses;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: fetchAlbum(),
                  builder: (context, AsyncSnapshot<List<getCourses>> snapshot) {
                    return ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(height: 10.0),
                        itemCount: courses.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Styles.primary1,
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: ListTile(
                              title: Text('Course : ' +
                                  snapshot.data![index].course.toString(),style: TextStyle(color: Colors.white),),
                              tileColor: Colors.white,
                              contentPadding: EdgeInsets.all(5),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CourseDetails()));
                              },
                            ),
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class getCourses {
  String? course;

  getCourses({this.course});
}

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
