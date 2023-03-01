import 'package:flutter/material.dart';
import 'package:newui/pages/user/events/completedevents.dart';
import 'package:newui/pages/user/events/upcomingevents.dart';

import '../../../utills/app_styles.dart';


class EventsList extends StatefulWidget {
  const EventsList({super.key});

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList>
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
                  expandedHeight: 115,
                  floating: true,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Events",
                            style: Styles.headlinestyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                        width: 120,
                        child: Tab(
                          text: 'Upcoming Events',
                        ),
                      ),
                      Container(
                          width: 120, child: Tab(text: 'Completed Events')),
                    ],
                  ),
                )
              ],
          body: TabBarView(
            controller: _tabController,
            children: [
              UpcomingEvent(),
              CompletedEvent(),
            ],
          )),
    );
  }
}
