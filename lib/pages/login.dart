import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newui/pages/forgotpass.dart';
import 'package:newui/pages/signup.dart';
import 'package:newui/pages/user/dashboard.dart';

import '../utills/app_styles.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

   bool _valide = false;
   bool _validp = false;
  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
      print('id');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     //title: Text("User Login"),
      //     ),

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
                                         // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                                password = passwordController.text;
                              });
                             }
                              });
                              userLogin();
                               

                                // Navigator.pushReplacement(context, 
                                // PageRouteBuilder(pageBuilder: (context,a,b) => Dashboard(),
                                //               transitionDuration: Duration.zero)

                                             
                                
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
                                        Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                                pageBuilder: (context, a, b) => Signup(),
                                                transitionDuration: Duration(seconds: 0)),
                                            )
                                      },
                                      child: Text('Signup',style: Styles.smallheadlinestyle),
                                ),
                        ],
                      )),
                    
                 
                  ],
                ) ),
            )
          ],
      ),);
  
    //   body: Form(
    //     key: _formKey,
    //     child: ListView(
    //       children: [
    //         SizedBox(
    //           height: 40,
    //         ),
    //         Container(
    //           height: 180,
    //           width: 180,
    //           decoration: BoxDecoration(
    //               image: DecorationImage(
    //                   image: AssetImage("assets/images/logo.png"))),
    //         ),
    //         Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                 width: 190,
    //                 height: 50,
    //                 decoration: const BoxDecoration(
    //                     image: DecorationImage(
    //                         fit: BoxFit.contain,
    //                         image: AssetImage("assets/images/TIHb.png"))),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text(
    //                 "Log In your account",
    //               )
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Container(
    //           margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
    //           child: TextFormField(
    //             autofocus: false,
    //             decoration: InputDecoration(
    //               labelText: 'Email : ',
    //               prefixIcon: Icon(Icons.email_outlined),
    //               labelStyle: TextStyle(fontSize: 20.0),
    //               border: OutlineInputBorder(),
    //               errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
    //             ),
    //             // controller: emailController,
    //             validator: (value) {
    //               if (value == null || value.isEmpty) {
    //                 return 'Please Enter Email';
    //               } else if (!value.contains('@')) {
    //                 return 'Please Enter Valid Email id';
    //               }
    //               return null;
    //             },
    //           ),
    //         ),
    //         Container(
    //           margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
    //           child: TextFormField(
    //             autofocus: false,
    //             obscureText: true,
    //             decoration: InputDecoration(
    //               labelText: 'Password : ',
    //               prefixIcon: Icon(Icons.security),
    //               labelStyle: TextStyle(fontSize: 20.0),
    //               border: OutlineInputBorder(),
    //               errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
    //             ),
    //             controller: passwordController,
    //             validator: (value) {
    //               if (value == null || value.isEmpty) {
    //                 return 'Please Enter Password';
    //               }
    //               return null;
    //             },
    //           ),
    //         ),
    //         Container(
    //           //margin: EdgeInsets.only(left: 60),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   // Validate returns true if the form is valid, otherwise false.
    //                   // if (_formKey.currentState!.validate()) {
    //                   //   setState(() {
    //                   //     email = emailController.text;
    //                   //     password = passwordController.text;
    //                   //   });

    //                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dashboard()));
    //                   //userLogin()
    //                   //}
    //                 },
    //                 child: Text(
    //                   'Log In',
    //                   style: TextStyle(
    //                       fontSize: 25.0,
    //                       fontFamily: AutofillHints.addressCity),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         TextButton(
    //           onPressed: () {},
    //           child: Text(
    //             'Forgot Password ? ',
    //             style: TextStyle(fontSize: 14.0),
    //           ),
    //         ),
    //         SizedBox(height: 130),
    //         Container(
    //           child: Row(

    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text("New to Techno IT Hub ? "),
    //               TextButton(
    //                 onPressed: () => {
    //                   Navigator.pushAndRemoveUntil(
    //                       context,
    //                       PageRouteBuilder(
    //                           pageBuilder: (context, a, b) => Signup(),
    //                           transitionDuration: Duration(seconds: 0)),
    //                       (route) => false)
    //                 },
    //                 child: Text('Signup'),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

}



// go to the signup page if user not register  -- signup.dart
// go to dashboard page -- dashboard.dart
