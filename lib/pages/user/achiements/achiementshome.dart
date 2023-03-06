import 'package:flutter/material.dart';
import 'package:newui/pages/user/achiements/achiementsblog.dart';

import '../../../utills/app_styles.dart';

class AchiementsHome extends StatefulWidget {
  const AchiementsHome({super.key});

  @override
  State<AchiementsHome> createState() => _AchiementsHomeState();
}

class _AchiementsHomeState extends State<AchiementsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, inner) => [
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverSafeArea(
                      top: false,
                      sliver: SliverAppBar(
                        automaticallyImplyLeading: false,
                        leadingWidth: 3.0,
                        backgroundColor: Styles.primary1,
                        expandedHeight: 130,
                        floating: false,
                        pinned: false,
                        snap: false,
                        bottom: const PreferredSize(
                            child: Text(''),
                            preferredSize: Size.fromHeight(30)),
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: Stack(
                            children: [
                              Positioned(
                                top: -30,
                                right: -40,
                                child: Container(
                                  padding: const EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 19, color: Styles.secondary),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).padding.top + 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Achivements",
                                  style:Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                                )
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Our Achivemets",
                                  style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                                )
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                )
              ],
          body: SizedBox(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                AchivementsCard(
                  imageview:
                      "https://technoithub.in/assets/images/activites/2.jpg",
                  text1: "CONNECT STARTUP DOTS",
                  text2:
                      "We reached the list of top 25 start-ups in CONNECT START-UP DOTS",
                  text3: "> Connect Startup Dots hosted a two-day event in Ahmedabad with the participation of 25 small start-ups from various sectors ‘making a social impact with technology.’\n\n> During the pandemic period, many vendors lost their companies and were struggling to stay afloat, which inspired the idea for the festival.\n\n> People with remarkable skills have turned to start-ups in these conditions. We sought to connect start-ups with vendors or buyers in MSME sector and help both of them, according to Jayendra Tanna President, Ahmedabad Chamber of Commerce Welfare Foundation.",
                  date: "21/6/2022"
                ),
                AchivementsCard(
                  imageview:
                      "https://technoithub.in/assets/images/activites/4.jpg",
                  text1: "SCIENCE CITY STALL",
                  text2:
                      "We are invited for showcasing our Startup in front of Education Minister of Gujarat Hon. Jeetu Vaghani, Dr. Kuber Dindor and Vice Chancellor of GTU Dr. Navin Sheth.",
                  text3: "> It has exhibits and rides about natural disasters, disaster management, planetarium, natural resources and its conservation.",
                  date:"18/6/2022"
                ),
              ],
            ),
          )),
    );
  }
}
