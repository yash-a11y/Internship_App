import 'package:flutter/material.dart';

import '../coursedetails/assignment.dart';
import '../coursedetails/home.dart';
import '../coursedetails/materials.dart';
import '../coursedetails/video.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: 4,
        initialIndex: 0,
        vsync: this); // this controller define how many tabs to represent

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
            backgroundColor: Color(0xff330099),
            expandedHeight: 180,
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            // snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SliverAppBar Title",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Subtitle",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Container(
                  width: 60,
                  child: Tab(
                    text: 'Home',
                  ),
                ),
                Container(width: 60, child: Tab(text: 'Materials')),
                Container(width: 60, child: Tab(text: 'Video')),
                Container(width: 180, child: Tab(text: 'Assignments')),
              ],
            ),
          ),
          // SliverFillRemaining(
          //   child:
          // )
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            Home(),
            Materials(),
            Video(),
            Assignment(),
          ],
        ),
      ),
    );
  }
}

// sharedpreference
