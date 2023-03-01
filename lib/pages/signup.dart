import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newui/pages/login.dart';

import '../utills/app_styles.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var collegeName = "";
  var year = "";
  var address = "";
  var contactNumber = "";
  var email = "";
  var password = "";

  // make controller
  var nameController = TextEditingController();
  var collegeNameController = TextEditingController();
  var yearController = TextEditingController();
  var addressController = TextEditingController();
  var contactNumberController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    collegeNameController.dispose();
    yearController.dispose();
    addressController.dispose();
    contactNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  registration() async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      print(userCredential);
      userCredential.user?.updateDisplayName(name);
      users.add({
        'name': name,
        'college_name': collegeName,
        'year': year,
        'address': address,
        'contact_number': contactNumber,
        'email': email,
        'password': password
      }).then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          ));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.greenAccent,
          content: Text(
            "Registered Successfully. Please Login..",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print("Password Provided is too Weak");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Password Provided is too Weak",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        print("Account Already exists");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Account Already exists",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: ListView(
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
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(

                    //

                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Name : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              // College Name
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(

                    //

                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'College Name : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: collegeNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter College Name';
                    }
                    return null;
                  },
                ),
              ),
              // Year of Gradutation
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    //
                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Year of Gradutation : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: yearController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Year';
                    }
                    return null;
                  },
                ),
              ),
              // Address
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    //
                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Address : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Address';
                    }
                    return null;
                  },
                ),
              ),
              // Contact No.
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    //
                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Contact Number : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: contactNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Contact Number';
                    }
                    return null;
                  },
                ),
              ),
              // Email
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    //
                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    } else if (!value.contains('@')) {
                      return 'Please Enter Valid Email id';
                    }
                    return null;
                  },
                ),
              ),
              // Password
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    //
                     enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            //
                    labelText: 'Password : ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),
              // Sign Up Button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      //style

                             style: ElevatedButton.styleFrom(
                          backgroundColor: Styles.primary1,
                         
                          shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                          )
                        )
                       ),
                      
                      //
                      onPressed: () => {
                        if (_formKey.currentState!.validate())
                          {
                            setState(() {
                              name = nameController.text;
                              collegeName = collegeNameController.text;
                              year = yearController.text;
                              address = addressController.text;
                              contactNumber = contactNumberController.text;
                              email = emailController.text;
                              password = passwordController.text;
                            }),
                            registration(),
                          }
                      },
                      child: Text("Sign Up",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                   
                    
                  ],
                ),
              )
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
          ),
        ),
      ),
    );
  }
}
