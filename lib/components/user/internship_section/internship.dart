import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/user/internship_section/InternCardView.dart';

import '../../../utills/app_styles.dart';
import '../../../utills/info.dart';

class Internship extends StatefulWidget {
  const Internship({super.key});

  @override
  State<Internship> createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      NestedScrollView(
        floatHeaderSlivers: true,
      
        headerSliverBuilder: (context, inner) => [

           SliverOverlapAbsorber(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)
           ,sliver: SliverSafeArea(
               
               top: false,
              sliver:     SliverAppBar(
                automaticallyImplyLeading: true,
                leadingWidth: 3.0,
               backgroundColor: Color(0xff330099),
               expandedHeight:130,
               floating: false,
               pinned: false,
               snap: false,

              
               
                bottom: const PreferredSize(          
                               // Add this code
                preferredSize: Size.fromHeight(30),      // Add this code
                child: Text(''),                           // Add this code
              ),               
                                  
            // snap: true,
            flexibleSpace: FlexibleSpaceBar(

              collapseMode: CollapseMode.parallax,
              title: Padding(
                 
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Internships",
                      style:
                          Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("offers by Techno IT Hub",
                        style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 11)
                        ),
                     
                  ],
                ),
              ),
            ),
            ),
          
           )),
      // SliverFillRemaining(
          //   child:
          // )
        ],
        
        // body: ListView(
        //   padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),

        //   children:const [

        //      InternView(text: "Flutter development")
        //      ,
        //     SizedBox(height: 8,),
        //      InternView(text: "Android development")
             
        //      ,SizedBox(height: 8,),
        //        InternView(text: "MERN stack development")
          
        //   ],
        // ),
        // body: ListView.builder(itemBuilder: itemBuilder),
        body: SingleChildScrollView(
              // padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),
              
              scrollDirection: Axis.vertical,
              child: Column(
                children:internshipinfo.map((e) => InternView(interninfo: e)).toList()
                )
              ),             

        ),
      
    );
  }
}