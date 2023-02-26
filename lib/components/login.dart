import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/forgotpass.dart';
import 'package:newui/components/signup.dart';
import 'package:newui/components/user/dashboard.dart';

import '../utills/app_styles.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  
  @override
  State<StatefulWidget> createState() => _LoginState();
  
 
}

class _LoginState extends State<Login> {

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
                  
                  Text("Log In your account",style: Styles.smallheadlinestyle,)
                  

                ],
              ),
            )
            ,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
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

                       TextButton(

                       onPressed: () { 
                        showGeneralDialog( context: context,
                         barrierLabel: "reset pwd",
                         barrierDismissible: true,
                         pageBuilder: (context, _, __) => Center(
                         child: Container(
                            height: 190,
                            margin: const EdgeInsets.symmetric(horizontal: 19),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                          child:Scaffold(
                            resizeToAvoidBottomInset: false,
                            backgroundColor: Colors.transparent,
                            body: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                            
                                child: Stack(
                                
                                   clipBehavior: Clip.hardEdge,
                                   children: [
                                                        
                                      
                                                          
                                     
                                        
                                        Form(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                     "Email",
                                      style: Styles.smallheadlinestyle.copyWith(fontSize: 15),
                                      ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5,bottom: 10),
                                              child: SizedBox(
                                                height: 65,
                                                child: TextFormField(
                                                                      
                                                                      controller: emailController,
                                                                      style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                                                                      autocorrect: false,
                                                                      textAlignVertical: TextAlignVertical.top,
                                                                      decoration: InputDecoration(
                                                                         
                                                                          
                                                                          enabledBorder: OutlineInputBorder(
                                                                            borderSide: BorderSide(color: Styles.secondary),
                                                                          ),
                                                                  
                                                                          // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
                                                                  
                                                                      
                                                                            border: OutlineInputBorder(
                                                                              borderRadius: BorderRadius.circular(5)
                                                                                    
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
                                              ),

                                            
                                            ),
                                            ElevatedButton(onPressed: (){
                                              Navigator.pushReplacement(context, 
                                              PageRouteBuilder(pageBuilder: (context,a,b) => ForgotPassword(email: emailController.text.toString()),
                                              transitionDuration: Duration.zero));
                                            }, 
                                            child: Text("Reset Password!")
                                            ,
                                           style: ElevatedButton.styleFrom(
                                          backgroundColor: Styles.primary1,
                                          minimumSize: const Size(double.infinity, 40),
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(25),
                                              bottomRight: Radius.circular(25),
                                              bottomLeft: Radius.circular(25),
                                            ),
                                          ),
                                        )

                                            )
                                          ],
                                        )
                                      
                                        ),
                                      
                                      
                                                  
                                   ],
                                ),
                              
                            ),
                          )
                         ),
                        ));
                        },
                       child: Text("Forgot Password?",style: Styles.smallheadlinestyle.copyWith(fontSize: 15),) ,
                    
                       )
                      ],
                    )
                    ,
                      Padding(
                            padding: const EdgeInsets.only(top: 0),
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
                      padding: const EdgeInsets.only(top: 30,bottom: 30),
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

                                Navigator.pushReplacement(context, 
                                PageRouteBuilder(pageBuilder: (context,a,b) => Dashboard(),
                                              transitionDuration: Duration.zero)
                                );
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
                       child: Text("Log In",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
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
                          Text("New to Techno IT Hub?",style : Styles.smallheadlinestyle.copyWith(fontSize: 18)),
                           TextButton(
                                  onPressed: () => {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            PageRouteBuilder(
                                                pageBuilder: (context, a, b) => SignUp(),
                                                transitionDuration: Duration(seconds: 0)),
                                            (route) => false)
                                      },
                                      child: Text('Signup',style: Styles.smallheadlinestyle),
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