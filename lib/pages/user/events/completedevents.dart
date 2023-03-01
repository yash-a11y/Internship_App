import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';


class CompletedEvent extends StatelessWidget {
  const CompletedEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          EventCard(
            imageview: "https://technoithub.in/assets/images/activites/2.jpg",
            text1: "CONNECT STARTUP DOTS",
            text2:
                "We reached the list of top 25 start-ups in CONNECT START-UP DOTS",
            text3:
                "Connect Startup Dots hosted a two-day event in Ahmedabad with the participation of 25 small start-ups from various sectors ‘making a social impact with technology.’\nDuring the pandemic period, many vendors lost their companies and were struggling to stay afloat, which inspired the idea for the festival. People with remarkable skills have turned to start-ups in these conditions. We sought to connect start-ups with vendors or buyers in MSME sector and help both of them, according to Jayendra Tanna President, Ahmedabad Chamber of Commerce Welfare Foundation.",
            date: "21/6/2022",
          ),
          EventCard(
            imageview: "https://technoithub.in/assets/images/activites/5.jpg",
            text1: "WORKSHOP AT GOVERNMENT GIRLS POLYTECHNIC",
            text2:
                "Arranged a Workshop for the Students of Government Polytechnic for Girls related to trending technologies.",
            text3:
                "Government Polytechnic for Girls - Ahmedabad (GPGA), a premier diploma engineering institute was established in the year 1964 with the aim to provide technical education to girls in the heritage city of Ahmedabad",
            date: "6/7/2022",
          ),
          EventCard(
              imageview: "https://technoithub.in/assets/images/activites/4.jpg",
              text1: "SCIENCE CITY STALL",
              text2:
                  "We are invited for showcasing our Startup in front of Education Minister of Gujarat Hon. Jeetu Vaghani, Dr. Kuber Dindor and Vice Chancellor of GTU Dr. Navin Sheth.",
              text3:
                  "It has exhibits and rides about natural disasters, disaster management, planetarium, natural resources and its conservation.",
              date: "18/6/2022"),
          EventCard(
            imageview: "https://technoithub.in/assets/images/activites/1.jpg",
            text1: "ARMY SCHOOL STALLS",
            text2:
                "We are invited for showcasing our projects in front of Army Officers and their childrens.",
            text3:
                "A Welcome Speech for a chief guest is the speech given by a student, teacher, Principal, or a host at any event organized in the school, College, or university to welcome the honorable Chief Guest.\n Here we have provided six welcome speeches for chief guests for various events like award ceremonies, annual day, Independence Day, etc.\n You can select and use any welcome speech according to the event organized at school or College to welcome your invited Chief Guest.",
            date: "23/9/2022",
          )
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String date;
  final String? imageview;
  const EventCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.date,
      this.imageview});

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
                  builder: (context) => EventView(
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
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text2,
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EventView extends StatelessWidget {
  final String text1;
  final String text3;
  final String date;
  final String? imageview;
  const EventView(
      {super.key,
      required this.text1,
      required this.text3,
      required this.date,
      this.imageview});

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
                  expandedHeight: 125.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(text1,
                        style: Styles.headlinestyle.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
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
        body: SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: imageview != null && imageview!.isNotEmpty
                            ? new DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage(imageview!),
                              )
                            : null),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Styles.primary1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: Styles.secondary,
                          thickness: 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Summary",
                              style: Styles.headlinestyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Posted on : $date",
                              style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        Divider(
                          color: Styles.secondary,
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text3,
                          style:Styles.smallheadlinestyle.copyWith(color: Colors.white, fontSize: 18),
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
    );
  }
}
