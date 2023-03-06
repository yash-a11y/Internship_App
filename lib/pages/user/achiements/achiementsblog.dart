import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';


class AchivementsCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String date;
  final String? imageview;
  const AchivementsCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.imageview,
      required this.text3,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AchiementsView(
                        text1: text1,
                        text3: text3,
                        imageview: imageview,
                        date: date,
                      )));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: Styles.primary1, borderRadius: BorderRadius.circular(13)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: imageview != null && imageview!.isNotEmpty
                        ? new DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: NetworkImage(imageview!),
                          )
                        : null),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text1,
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text2,
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white,
                                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AchiementsView extends StatelessWidget {
  final String text1;
  final String text3;
  final String date;
  final String? imageview;
  const AchiementsView(
      {super.key,
      required this.text1,
      required this.text3,
      this.imageview,
      required this.date});

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
                sliver: SliverAppBar(
                  backgroundColor: Styles.primary1,
                  automaticallyImplyLeading: false,
                  expandedHeight: 110.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(text1,
                        style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 18
                                )),
                    background: Stack(children: [
                      Positioned(
                          top: -30,
                          right: -40,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 19, color: Styles.secondary),
                                color: Colors.transparent),
                          )),
                    ]),
                  ),
                ),
              )),
        ],
        body: Center(
          child: SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(
                      height: 30,
                    ),
                    Container
                    (  padding: const EdgeInsets.symmetric(vertical: 10),
                       decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Styles.secondary),
                       ),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        
                        decoration: BoxDecoration(
                             
                           
                            image: imageview != null && imageview!.isNotEmpty
                                ? new DecorationImage(
                                    fit: BoxFit.scaleDown,
                                    
                                    image: NetworkImage(imageview!),
                                  )
                                : null),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                     Divider(
                            color: Styles.secondary,
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Details",
                                style: Styles.headlinestyle.copyWith(color: Styles.textcolor,fontSize: 20,fontWeight: FontWeight.bold
                                  ),
                              ),
                              Text(
                                "Posted on : $date",
                                style: Styles.smallheadlinestyle.copyWith(color: Styles.textcolor),
                              ),
                            ],
                          ),
                          Divider(
                            color: Styles.secondary,
                            thickness: 1.5,
                          ),

                          SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Styles.primary1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                         
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            text3,
                            style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18
                                  ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
