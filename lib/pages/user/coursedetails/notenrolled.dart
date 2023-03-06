import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';
import '../coursedetails/assignment.dart';
import '../coursedetails/home.dart';
import '../coursedetails/materials.dart';
import '../coursedetails/video.dart';


class NotEnrolled extends StatefulWidget {
  const NotEnrolled({super.key});

  @override
  State<NotEnrolled> createState() => _NotEnrolledState();
}

class _NotEnrolledState extends State<NotEnrolled>
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
          SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver : SliverAppBar(
                
                backgroundColor: primary1,
                expandedHeight: 180,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: true,
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
                          "Introduction to\nAndroid development",
                          style:
                              Styles.headlinestyle.copyWith(fontSize: 19, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile development",
                            style: Styles.smallheadlinestyle.copyWith(color: Colors.white,
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ),
                ),
             ),
           )),
        ],
        body: Home(isEnroll: false,))
    );
 
  }}
    
