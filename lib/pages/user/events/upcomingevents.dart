import 'package:flutter/material.dart';
import 'package:newui/pages/user/events/eventsappy.dart';

import '../../../utills/app_styles.dart';


class UpcomingEvent extends StatefulWidget {
  const UpcomingEvent({super.key});

  @override
  State<UpcomingEvent> createState() => _UpcomingEventState();
}

class _UpcomingEventState extends State<UpcomingEvent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [UpcomingCard()],
      ),
    );
  }
}

class UpcomingCard extends StatelessWidget {
  final String imageview =
      "https://almashines.s3.dualstack.ap-southeast-1.amazonaws.com/assets/images/eventlogos/sizea/14790411670413673.jpg";
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      child: TextButton(
        onPressed: () {},
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
                "Hackathon Events",
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Smart India Hackathon is a nationwide initiative to provide students with a platform to solve some of the pressing problems we face in our daily lives, and thus inculcate a culture of product innovation and a mindset of problem-solving.",
                style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpEventView(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          )),
                        ),
                        child: Text(
                          "View More",
                          style: Styles.smallheadlinestyle.copyWith(color: primary1, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ))),
                        child: Text(
                          "Apply",
                          style: Styles.smallheadlinestyle.copyWith(color: primary1, fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
