import 'package:flutter/material.dart';
import 'package:newui/pages/user/techupdates/techcards.dart';
import 'package:newui/utills/app_styles.dart';


class TechHome extends StatefulWidget {
  const TechHome({super.key});

  @override
  State<TechHome> createState() => _TechHomeState();
}

class _TechHomeState extends State<TechHome> {
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
                                  "Tech-Events",
                                  style:  Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "be updated with new Events",
                                  style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 11)
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
                TechCard1(),
                TechCard2(iscolor: true),
              ],
            ),
          )),
    );
  }
}
