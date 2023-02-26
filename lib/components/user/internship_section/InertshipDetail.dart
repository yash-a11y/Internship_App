
import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';


class InternDetail extends StatelessWidget {
  final Map<String,dynamic> information;
  const InternDetail({Key ? key,required this.information}) : super(key : key);

  @override
  Widget build(BuildContext context) {
     
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                     width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Styles.primary1,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),bottomRight: Radius.circular(9))
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 50),
                      child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                           Text(
                            "${information['title']}",
                            style:
                                Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("${information['subtitle']}",
                              style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 15)
                              ),
                        ],
                      ),
                    ),
                  ),
                    Positioned(
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
                       
                  )
                ],
              )
              ,
                Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 19),
                   child: Text(
                          "Details",
                          style:
                              Styles.headlinestyle.copyWith(color: Styles.primary1,fontSize: 23,fontWeight: FontWeight.bold
                              ),textAlign: TextAlign.start,
                        ),
                 ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 8),
                   child: Container(
                    height: 230,
                     width: MediaQuery.of(context).size.width
                    ,
                    padding: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      color: Styles.primary1,
                      borderRadius: BorderRadius.circular(9),
                     ),
                 
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text("- Mode :${information['details']['mode']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("- Stippen : ${information['details']['stippen']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("- Location : ${information['details']['Location']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      
                      Text("- Duration : ${information['details']['duration']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("- Experience : ${information['details']['exp']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("- Knowledg about :${information['details']['know']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      
                      
                     ]),
                   ),
                 )
                ,
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 19),
                   child: Text(
                          "Perks",
                          style:
                              Styles.headlinestyle.copyWith(color: Styles.primary1,fontSize: 23,fontWeight: FontWeight.bold
                              ),textAlign: TextAlign.start,
                        ),
                 ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 8),
                   child: Container(
                    height: 180,
                     width: MediaQuery.of(context).size.width
                    ,
                    padding: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      color: Styles.primary1,
                      borderRadius: BorderRadius.circular(9),
                     ),
                 
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text("${information['perks']['one']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("${information['perks']['two']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("${information['perks']['three']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      Text("${information['perks']['four']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                      
                     ]),
                   ),
                 )
            
            ],
        ),

      ),
      // body: NestedScrollView(
         
      //   // floatHeaderSlivers: true,
      //   headerSliverBuilder: (context, inner) => [
      //      SliverOverlapAbsorber(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)
      //      ,sliver: SliverSafeArea(
              
      //          top: false,
      //          left: ,
      //         sliver:     SliverAppBar(
      //           automaticallyImplyLeading: true,
                
      //          backgroundColor: Color(0xff330099),
      //          expandedHeight:130,
      //          floating: false,
      //          pinned: true,
      //          snap: false,
              
               
      //           bottom: const PreferredSize(          
      //                          // Add this code
      //           preferredSize: Size.fromHeight(50),      // Add this code
      //           child: Text(''),                           // Add this code
      //         ),               
                                  
      //       // snap: true,
      //       flexibleSpace: FlexibleSpaceBar(centerTitle: false,
      //       title: Padding(
                 
      //           padding: EdgeInsets.only(
      //               top: MediaQuery.of(context).padding.top + 10),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 "Flutter development",
      //                 style:
      //                     Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
      //                     ),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Text("Android and IOS application development!",
      //                   style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 11)
      //                   ),
                     
      //             ],
      //           ),
      //         ),
      //       ),
      //       ),
          
      //      )),
      // // SliverFillRemaining(
      //     //   child:
      //     // )
      //   ],
      //   body: ListView(
      //     padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),
      //            children: [
      //              Container(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text("Details", style: Styles.headlinestyle.copyWith(color: Styles.primary1,fontSize: 20,fontWeight: FontWeight.bold),)
      //                   ,SizedBox(height: 19,),
      //                   Text("euhwquwhqijkwndnsfifhisidsjdesfjfskcsdcsdsiodwejifsjfssnddsjdoidsdofjsdsnxxnsacsdodaoasfodsdaskdsdnsc dfvddjdifdjdasjdssodsjfjosdfj vsvffwfsvd fojfdfw"
      //                   ,textAlign: TextAlign.start,
      //                   style: Styles.smallheadlinestyle,)
      //                 ],
      //               )
      //              )

      //              ]
      //   )

      // ),
    );
 ;
  }
}