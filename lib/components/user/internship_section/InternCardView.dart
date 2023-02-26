import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/user/internship_section/InertshipDetail.dart';
import 'package:newui/components/user/internship_section/applyform.dart';

import '../../../utills/app_styles.dart';

class InternView extends StatelessWidget {
 
  final Map<String,dynamic> interninfo;
  const InternView({Key ? key,required this.interninfo}) : super(key:key);
 

  @override
  Widget build(BuildContext context) {
    print(interninfo);
   return     Container(
              margin: EdgeInsets.only(left: 11,right : 11,top: 9),
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Styles.primary1,
              ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text("${interninfo['title']}",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)
                    ,
                    Row(
                      
                      children: [
                        
                          SizedBox(
                            height: 50,width: 70,
                            child: ElevatedButton(
                              
                            onPressed: ()
                            {
                                     Navigator.push(context, 
                                     MaterialPageRoute(builder: (context) => InternDetail(information: interninfo),));           
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              
                          
                              shape: const RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                              )
                            )
                                                 ),
                                                 child: Text("View more",style: Styles.smallheadlinestyle.copyWith(color: Styles.primary1),)),
                          ),
                          SizedBox(width: 3,),
                           SizedBox(
                            height: 50,width: 70,
                            child: ElevatedButton(
                              
                            onPressed: ()
                            {
                                 Navigator.push(context, 
                                 MaterialPageRoute(builder: (context) => ApplyForm(text: "${interninfo['title']}")));       
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              
                          
                              shape: const RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                              )
                            )
                                                 ),
                                                 child: Text("Apply",style: Styles.smallheadlinestyle.copyWith(color: Styles.primary1),)),
                          ),
           
                      ],
                    )
                
                   
                   ],
           
                   
                
              ),
           );
            
  }
}