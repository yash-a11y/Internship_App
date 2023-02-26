import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/blogs/blogcard.dart';
import 'package:newui/components/blogs/blogcard1.dart';

import '../../utills/app_styles.dart';

class BlogHome extends StatefulWidget {
  const BlogHome({super.key});

  @override
  State<BlogHome> createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
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
               background:  Stack(
            children:[ Positioned(
                            top: -30,
                            right: -40,
                            child: 
                           Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 19,color : Styles.secondary),
                        color: Colors.transparent
          
                      ),
                          )
                         
                    ),
        ]),
              title: Padding(
                 
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Blogs",
                      style:
                          Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("be updated with new technology",
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
        body: SizedBox(
          
          child: ListView(
                // padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children:[ BlogCard1(),
                BlogCard(iscolor: true,)]
                ),
        ),             

        ),
      
    );
  }
}