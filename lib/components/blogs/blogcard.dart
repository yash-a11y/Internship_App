import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/blogs/videoblog.dart';

import '../../utills/app_styles.dart';
import 'blogdetail.dart';

class BlogCard extends StatelessWidget {
  final bool iscolor;
  const BlogCard({Key ? key,required this.iscolor}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //  height:MediaQuery.of(context).size.height*0.19,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
   
    

        child :
             TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VideoBlog()));
              },
              child: Container(
              
                
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                color: Styles.primary1,
                borderRadius: BorderRadius.circular(13)
              )
              ,
              child: 
              Column(
               
               
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  iscolor == true?
                  Stack
                  (
                    children : [ Container(
                      height: 180,
                      
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage (
                            'assets/images/android1.png'
                            ))
                            
                      ),
                                   
                    ),
                      Positioned(
                        top: 50,
                        left: 130,
                        child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Styles.primary1),
                            fixedSize: MaterialStateProperty.all<Size>(Size(80, 80)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VideoBlog()));
                        },
                        child: Icon(Icons.play_arrow)),
                      )
                ])
                :
                Container(
                      height: 180,
                      
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage (
                            'assets/images/javavc.jpg'
                            ))
                            
                      ),
                                   
                    ),
                  
                  
                  const SizedBox(height: 8,),
                  Text("Android 12" 
                  ,
                  style: Styles.headlinestyle0.copyWith(color: Colors.white,fontSize: 19),
                  textAlign: TextAlign.left,)
                  ,
                   const SizedBox(height: 8,),
                  Text("What is new in android 12..."
                  ,
                  style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,)
                ],
              ),
                      ),
            )
         ,
             
        
      
    );
  }
}