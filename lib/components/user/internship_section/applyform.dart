import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../utills/app_styles.dart';

class ApplyForm extends StatefulWidget {
  final String text;
  const ApplyForm({Key?key,required this.text}) : super(key: key);

  @override
  State<ApplyForm> createState() {
    return _ApplyFormState(this.text);
  }
}

class _ApplyFormState extends State<ApplyForm> {
  String text;
  _ApplyFormState(this.text);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 199,
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
                            "Apply for \n${text}",
                            style:
                                Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Beign new journey with Techno IT Hub",
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
              Container(
                height: MediaQuery.of(context).size.height*.69,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 19,right: 19,top: 19),
                margin: const EdgeInsets.only(top: 30,left: 19,right: 19),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Styles.primary1)

                ),
                child: Form(
                  
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 11),
                      //   child: Text(
                      //     "Email",
                      //     style: TextStyle(color: Styles.textcolor),
                      //   ),
                      // ),
                      
                      Text(
                          "Name",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),

                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19,top: 5),
                        child: TextFormField(
                          
                          textAlignVertical: TextAlignVertical.top,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                      
                          decoration: InputDecoration(
                             
                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Styles.secondary),
                              ),
                      
                              // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
                      
                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                    
                                ),
                              
                               
                              
                            
                            
                          ),
                    
                         
                      
                      
                        ),
                      ),
                    )

                      ,
                     Text(
                          "College/School",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),
                    SizedBox(
                      height: 60,
                      child: Padding(

                        padding: const EdgeInsets.only(bottom: 19,top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          // controller: emailController,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                      
                          decoration: InputDecoration(
                             
                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Styles.secondary),
                              ),
                      
                              // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
                      
                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                    
                                ),
                              
                                errorStyle: TextStyle(color: Colors.red, fontSize: 13),
                                // errorText:  _valide?"Enter valid email":null,
                           
                            
                          ),
                    
                          onFieldSubmitted: (value)  {
                                    
                                setState(() {
                                  // emailController.text = value.toString();
                                });
                            },
                      
                      
                        ),
                      ),
                    )
                    ,

                            Text(
                          "Contact",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),

                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19,top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          keyboardType: TextInputType.phone,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                      
                          decoration: InputDecoration(
                             
                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Styles.secondary),
                              ),
                      
                              // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
                      
                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                    
                                ),
                              
                               
                              
                            
                            
                          ),
                    
                         
                      
                      
                        ),
                      ),
                    )
                          ,
                            Text(
                          "Email",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),

                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19,top: 5),
                        child: TextFormField(
                          
                          textAlignVertical: TextAlignVertical.top,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                      
                          decoration: InputDecoration(
                             
                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Styles.secondary),
                              ),
                      
                              // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
                      
                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                    
                                ),
                              
                               
                              
                            
                            
                          ),
                    
                         
                      
                      
                        ),
                      ),
                    )
                    ,
                     Text(
                          "Mode",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),
                    SizedBox(
                      height: 39,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Radio(value: "Online", groupValue: "mode", onChanged: (val){},activeColor: Styles.secondary,focusColor: Styles.secondary,),
                                    Expanded(child: Text("Online"),flex: 1,)

                                  ],
                                ) 
                                )
                                ,
                                 Expanded(
                                child: Row(
                                  children: [
                                    Radio(value: "Ofline", groupValue: "mode", onChanged: (val){}),
                                    Expanded(child: Text("Ofline"),flex: 1,)

                                  ],
                                ) 
                                )
                                ,
                                 Expanded(
                                child: Row(
                                  children: [
                                    Radio(value: "Hybrid", groupValue: "mode", onChanged: (val){}),
                                    Expanded(child: Text("Hybride"),flex: 1,)

                                  ],
                                ) 
                                )
                              // RadioListTile(value: "Hybride", groupValue: "mode", onChanged: (val){},title: Text("Hybride"),)
                        ],),
                    )
                     
                    ,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                            // setState(() {
                            //        if(emailController.text.toString().isEmpty || !emailController.text.toString().contains("@"))
                            //       {
                            //       _valide = true;
                            //       }
                            //       else
                            //       {
                            //         _valide = false;
                            //       }
                            //      if(passwordController.text.toString().length < 5)
                            //     {
                            //       _validp = true;
                            //     }
                            //     else
                            //     {
                            //      _validp = false;
                            //     }
                            //     });
                               
                            //     print("${emailController.text.toString()}");
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Styles.primary1,
                          minimumSize: const Size(double.infinity,56),
                          shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                          )
                        )
                       ),
                       child: Text("Apply",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                    )
                  
                    
                    
                 
                  ],
                ) ),
           ),
              
               
            
                
            ],
        ),

      ),
   
    );
 ;;
  }
}