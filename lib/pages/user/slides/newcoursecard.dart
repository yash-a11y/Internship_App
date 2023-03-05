import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/pages/user/slides/course_details.dart';

import '../../../utills/app_styles.dart';

class NewCourseCrad extends StatefulWidget {
  final bool isenroll;
  const NewCourseCrad({super.key,required this.isenroll});

  @override
  State<NewCourseCrad> createState() => _NewCourseCradState();
}

class _NewCourseCradState extends State<NewCourseCrad> {
   
 
    
  @override
  Widget build(BuildContext context) {
     
  
      return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetails()));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: Styles.primary1, borderRadius: BorderRadius.circular(13)),
          child: Column(
            children: [
              Row(
                
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(image: AssetImage("assets/images/android1.png"),fit: BoxFit.scaleDown)
                    ),
                  )
                  ,
                  Container(
                    margin: const EdgeInsets.only(left: 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  
                      children: [
                        Text("Introduction to android\ndevelopment",style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 18),),
                        SizedBox(height: 3,),
                        Text("duration :48 hr",style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 5,),
                        Text("500 ₹",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)
                      ],
                    ),
                  )

                  ,
                
                ]
              ),

                SizedBox(height: 5,),
              widget.isenroll?
               Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                                    
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Styles.secondary,
                          minimumSize: const Size(double.infinity,40),
                          shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                          )
                        )
                       ),
                       child: Text("Start Learning",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                    ):
                    Container()
            ],
          )
        ),
      ),
    );
 
  }
}