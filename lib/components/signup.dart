import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/login.dart';

import '../utills/app_styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  
  @override
  State<StatefulWidget> createState() => _SignUpState();
  
 
}

class _SignUpState extends State<SignUp> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _valide = false;
   bool _validp = false;

  @override
  void dispose()
  {
    super.dispose();
    
    emailController.dispose();
    passwordController.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 110),
          shrinkWrap: true,
          
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
                  
                  Text("Create new account",style: Styles.smallheadlinestyle,)
                  

                ],
              ),
            )
            ,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
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
                          "UserName",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19,top: 5),
                      child: TextFormField(
                        
                        
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
                            
                             
                            
                            prefixIcon:  Icon(Icons.person ,color:  Styles.primarycolor),
                          
                        ),

                       
                    
                    
                      ),
                    )

                      ,
                     Text(
                          "Email",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19,top: 5),
                      child: TextFormField(
                        
                        controller: emailController,
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
                              errorText:  _valide?"Enter valid email":null,
                            
                            prefixIcon:  Icon(Icons.email_outlined,color:  Styles.primarycolor),
                          
                        ),

                        onFieldSubmitted: (value)  {
                
                              setState(() {
                                emailController.text = value.toString();
                              });
                          },
                    
                    
                      ),
                    )
                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     
                      children: [

                         Text(
                          "Password",
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                        ),

                    
                      ],
                    )
                    ,
                      Padding(
                            padding: const EdgeInsets.only(top: 5),
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
                              errorText: _validp? "Password Length not less than five":null,
                            
                            prefixIcon:  Icon(Icons.security_rounded,color:  Styles.primarycolor),
                                                  
                                                ),
                            
                              onFieldSubmitted: (val){
                                          setState(() {
                                            passwordController.text = val.toString();
                                          });
                                        },      
                              
                        
                                              ),
                          )
                
                    ,
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                            setState(() {
                                   if(emailController.text.toString().isEmpty || !emailController.text.toString().contains("@"))
                                  {
                                  _valide = true;
                                  }
                                  else
                                  {
                                    _valide = false;
                                  }
                                 if(passwordController.text.toString().length < 5)
                                {
                                  _validp = true;
                                }
                                else
                                {
                                 _validp = false;
                                }
                                });
                               
                                print("${emailController.text.toString()}");
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
                       child: Text("Sign Up",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                    )
                    ,Stack
                    (
                        children: [Divider(
                        color: Styles.secondary,
                    
                      ),

                    
                       Center(
                         child: Container(
                               
                               color: Colors.white,
                              child: Text("OR",style: Styles.smallheadlinestyle,),
                          ),
                       ),
                      
                    ]  )
                    
                    ,
                     
                     const SizedBox(height: 15,)
                     ,
                     Container(child: 
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style : Styles.smallheadlinestyle.copyWith(fontSize: 18)),
                           TextButton(
                                  onPressed: () => {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            PageRouteBuilder(
                                                pageBuilder: (context, a, b) => Login(),
                                                transitionDuration: Duration(seconds: 0)),
                                            (route) => false)
                                      },
                                      child: Text('LogIn',style: Styles.smallheadlinestyle),
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