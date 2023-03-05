import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Styles.primary1)
                ),
                child: ListTile(
                  title: Text(
                    'Details',
                    style: Styles.headlinestyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("\nIn this program, you’ll learn:\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17),),
                      Text("> Essential Android programming concepts and the tools needed to develop applications\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> How to use the Kotlin Playground\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> Create user interfaces (UI) for mobile apps using Android Studio\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> Manage the lifecycle and data collections of mobile applications \n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> Work with web technologies and persistent data on Android applications\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17))
                      
                    ],
                  ),
                  tileColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Styles.primary1)
                ),
                child: ListTile(
                  title: Text(
                    'Perks\n',
                      style: Styles.headlinestyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("> Earn a Certificate upon completion\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17),),
                      Text("> Start instantly and learn at your own schedule.\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> No prior experience required.\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                      Text("> Hand on assigemnts on daily basis\n",style: Styles.smallheadlinestyle.copyWith(fontSize: 17)),
                     
                    ],
                  ),
                  tileColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 20,
              ),
                Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                       
                                             
                                
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Styles.secondary,
                          minimumSize: const Size(130,45),
                          shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                          )
                        )
                       ),
                       child: Text("Enroll Now",style: Styles.headlinestyle0.copyWith(color: Colors.white),)),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
