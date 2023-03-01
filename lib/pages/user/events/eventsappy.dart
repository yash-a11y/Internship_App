import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../utills/app_styles.dart';


class UpEventView extends StatelessWidget {
  final String imageview =
      "https://almashines.s3.dualstack.ap-southeast-1.amazonaws.com/assets/images/eventlogos/sizea/14790411670413673.jpg";
  const UpEventView({super.key});

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
                  title: Text("Heading 1",
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
            ),
          )
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
                              "Description",
                              style: Styles.headlinestyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Event Date : 25/2/2023",
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
                          "This event held by the TIH",
                          style: Styles.smallheadlinestyle.copyWith(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 70,
                  
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
                        style: Styles.smallheadlinestyle.copyWith(color: primary1),
                      ),
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
