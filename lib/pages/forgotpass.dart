import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import '../../utills/app_styles.dart';
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  final  String email;
  const ForgotPassword({Key ? key , required this.email}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _ForgotPasswordState();
  
 
}

class _ForgotPasswordState extends State<ForgotPassword> {
   
  final passwordController0 = TextEditingController();
  final passwordController = TextEditingController();
  bool _validp0 = false;
   bool _validp = false;

  @override
  void dispose()
  {
    super.dispose();
    
    passwordController0.dispose();
    passwordController.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 150),
          physics: NeverScrollableScrollPhysics(),
          
          children: [

            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(image: 
                AssetImage(
                  "assets/images/logo.png"
                ))
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                    width: 190,
                    height: 50,
                    decoration: const BoxDecoration(
                      
                      image: DecorationImage(
                        
                        fit: BoxFit.contain,
                        image: 
                      AssetImage(
                        "assets/images/TIHb.png"
                      ))
                    ),
                  ),
                  
                  Text("Reset your password",style: Styles.smallheadlinestyle,)
                  

                ],
              ),
            )
            ,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
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
                      
                      Row(
                        children: [
                          Text("changing password for:", style: Styles.smallheadlinestyle.copyWith(fontSize: 16),),
                          Text("xyz@gmail.com", style: Styles.smallheadlinestyle.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top: 5),
                       child: Text(
                            "New Password",
                            style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19,top: 5),
                      child: TextFormField(
                        
                        controller: passwordController,
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
                              errorText:  _validp?"Password length not less than five":null,
                            
                            prefixIcon:  Icon(Icons.security,color:  Styles.primarycolor),
                          
                        ),

                        onFieldSubmitted: (value)  {
                
                              setState(() {
                                passwordController.text = value.toString();
                              });
                          },
                    
                    
                      ),
                    )
                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     
                      children: [

                         Text(
                          "Confirm Password",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),
                      ],
                    )
                    ,
                      Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: TextFormField(

                             controller: passwordController0,       
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
                              errorText: _validp0? "Password Not match":null,
                            
                            prefixIcon:  Icon(Icons.security_rounded,color:  Styles.primarycolor),
                                                  
                                                ),
                            
                              onFieldSubmitted: (val){
                                          setState(() {
                                            passwordController0.text = val.toString();
                                          });
                                        },      
                              
                        
                                              ),
                          )
                
                    ,
                   
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 30),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                            setState(() {
                                   
                                 if(passwordController.text.toString().length < 5)
                                {
                                  _validp = true;
                                }
                                else if(passwordController0.text.toString().isEmpty)
                                {
                                   _validp0 = true;
                                   _validp = false;

                                }
                                else if(passwordController0.text.toString() != passwordController.text.toString()){
                                    _validp0 = true;
                                }
                                else
                                {
                                 _validp0 = false;
                                 _validp = false;
                                }

                                });
                               
                                
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
                       child: Text("Change Password",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                    )
                    
                    
                    ,
                     
                     const SizedBox(height: 5,),
                    
                     Divider(
                      color: Styles.secondary1,

                     )
                     ,
                      const SizedBox(height: 5,),
                     Container(child: 
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Back to?",style : Styles.smallheadlinestyle.copyWith(fontSize: 18)),
                           TextButton(
                                  onPressed: () => {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            PageRouteBuilder(
                                                pageBuilder: (context, a, b) => Login(),
                                                transitionDuration: Duration(seconds: 0)),
                                            (route) => false)
                                      },
                                      child: Text('Login',style: Styles.smallheadlinestyle),
                                ),
                        ],
                      )),
                    
                 
                  ],
                ) ),
            )
          ],
      ),
    );
  }
  
}