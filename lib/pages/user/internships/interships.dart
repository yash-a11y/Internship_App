import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newui/pages/user/internships/viewapplyform.dart';

import '../../../extra/info.dart';
import '../../../utills/app_styles.dart';
import 'availableintern.dart';


class Interships extends StatefulWidget {
  const Interships({super.key});

  @override
  State<Interships> createState() => _IntershipsState();
  
}

class _IntershipsState extends State<Interships> with SingleTickerProviderStateMixin {
      
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
            expandedHeight: 150,
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 28),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Internships",
                      style:  Styles.headlinestyle.copyWith(fontSize: 20,color : Colors.white),
                       
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("offers by Techno It Hub",
                        style:  Styles.headlinestyle.copyWith(fontSize: 15,color : Colors.white),),
                        SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
              bottom: TabBar(
                    controller: _tabController,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Container(
                        width: 120,
                        child: Tab(
                          text: 'Available',
                        ),
                      ),
                      Container(
                          width: 120, child: Tab(text: 'Applied')),
                    ],
                  ),
          )
        ],
        body:  TabBarView(
            controller: _tabController,
            children: [
              AvailIntern(),
              AppliedIntern(),
            ],
          )
    ));
  }
}

class InternView extends StatelessWidget {
  final Map<String, dynamic> interninfo;
  final bool isapply;
  const InternView({super.key, required this.interninfo,required this.isapply});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 11, right: 11, top: 9),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Styles.primary1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            // this line complex
            "${interninfo['title']}",

            style:  Styles.smallheadlinestyle.copyWith(color : Colors.white),
            //Styles.smallheadlinestyle.copyWith(color: Colors.white),
          ),
          isapply?      Container(
            margin: const EdgeInsets.only(right: 19),
           
            child: SizedBox(
                 
                  height: 50,
                  width: 100,
                  child: ElevatedButton(

                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ))),
                    child: Container(
                    
                      child: Text(
                        "Applied",
                        style: Styles.smallheadlinestyle.copyWith(color : Styles.primary1),
                      ),
                    ),
                  ),
                ),
          ):
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              InternDetail(information: interninfo),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ))),
                  child: Text(
                    "View more",
                    style: Styles.smallheadlinestyle.copyWith(color : Styles.primary1),
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              SizedBox(
                height: 50,
                width: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ApplyForm(text: "${interninfo['title']}")));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ))),
                  child: Text(
                    "Apply",
                    style: Styles.smallheadlinestyle.copyWith(color : Styles.primary1),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
