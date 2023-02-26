import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utills/app_styles.dart';

class Bolgview extends StatelessWidget {
  const Bolgview({super.key});

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
                backgroundColor: Styles.primary1,
        expandedHeight: 130.0,
        flexibleSpace: FlexibleSpaceBar(
          title:   Text("compepetitve coding\nJava or c++?",style: Styles.headlinestyle.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
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
          
          child: SingleChildScrollView(
                // padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),
                
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 10),
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                              
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: 
                                AssetImage("assets/images/javavc.jpg"),fit: BoxFit.scaleDown)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 9),
                                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Styles.primary1
                  ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                       Divider(
                              color: Styles.secondary,
                              thickness: 1.5,
                            )
                            ,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("Summary",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text("Posted on : 25/02/23",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),),
                              ],
                            )
                            ,
                            Divider(
                              color: Styles.secondary,
                              thickness: 1.5,
                            )
                            ,
                            SizedBox(height: 10,),
                            Text("- Usually C++ code is shorter than its Java analog.\n",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                            Text("- C++ runtime is more predictable since it has less hidden costs like unexpected unboxings or garbage collections.\n",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                            Text("- Generally C++ is faster, C++ uses less RAM\n",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                            
                            Text("- on other hand java has Rich standard library, Good IDE support, billion of device\n",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                           
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
