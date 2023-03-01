import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newui/pages/user/internships/interships.dart';
import 'package:newui/pages/user/navbar.dart';

import '../../utills/app_styles.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CollectionReference user = FirebaseFirestore.instance.collection('users');

  final name = FirebaseAuth.instance.currentUser!.displayName;
  final email = FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(), // it can show side bar
      appBar: AppBar(
        backgroundColor: Styles.primary1,
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
       
        child: Column(
          children: [
            // this is for slidebar
            Slidebar(),
            SizedBox(
              height: 5,
            ),

            CardList(),
            SizedBox(
              height: 5,
            ),
            Courses(),
          ],
        ),
      ),
    );
  }
}

class Slidebar extends StatefulWidget {
  @override
  State<Slidebar> createState() => _SlidebarState();
}

class _SlidebarState extends State<Slidebar> {
  //const Slidebar({super.key});
  final _formKey = GlobalKey<FormState>();
  final CarouselController _carouselController = CarouselController();

  int currentIndex = 0;

  List imageList = [
    {"id": 1, "image_path": 'assets/images/course/android_course.jpg'},
    {"id": 2, "image_path": 'assets/images/course/flutter_course.jpg'},
    {"id": 3, "image_path": 'assets/images/course/java_course.jpg'},
    {"id": 4, "image_path": 'assets/images/course/php_course.jpg'},
    {"id": 5, "image_path": 'assets/images/course/python_course.jpg'},
    {"id": 6, "image_path": 'assets/images/course/reactjs_course.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 5),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
    
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: _carouselController,
                options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 9 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? Colors.black
                            : Colors.grey),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(30),
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.assignment_add),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(
                  "Studies",
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add_box_rounded),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Interships()));
                  },
                ),
                Text(
                  "Interships",
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(

            padding: const EdgeInsets.all(3),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.people_alt),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(
                  "Community",
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.people_alt),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(
                  "Tech updates",
                  textAlign: TextAlign.center,
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.people_alt),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(
                  "Events",
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Styles.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.collections_bookmark_rounded),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(

                  "Achiements",
                  style: Styles.headlinestyle1.copyWith(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }
}

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
            
              "Courses",
              textAlign: TextAlign.left,
              style: Styles.headlinestyle.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Styles.primary1
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text(
                  'My Learning',
                  textAlign: TextAlign.left,
                  style: Styles.headlinestyle.copyWith(
                    
                    fontSize: 20,
                    color: Styles.textcolor
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
               margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
              
              leading: Icon(Icons.play_circle_fill,color: Colors.white),
              title: Text(
                'Flutter Development',
                style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to flutter',style: TextStyle(color: Colors.white)),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
          Container(
             margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
            
              leading: Icon(Icons.play_circle_fill,color: Colors.white),
              title: Text(
                'Android Development',
                style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to Android',style: TextStyle(color: Colors.white),),
             
              onTap: () {},
              splashColor: Styles.primary1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
             margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
              
              leading: Icon(Icons.play_circle_fill,color: Colors.white),
              title: Text(
                'Reactjs Development',
               style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to ReactJs',style: TextStyle(color: Colors.white)),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
             margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
              leading: Icon(Icons.play_circle_fill,color: Colors.white),
              title: Text(
                'Flutter Development',
                style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to flutter',style: TextStyle(color: Colors.white)),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
             margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
              leading: Icon(
                Icons.play_circle_fill,color: Colors.white
                
              ),
              title: Text(
                'PHP Development',
                style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to PHP',style: TextStyle(color: Colors.white)),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
             margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
              
             color: Styles.primary1,
              borderRadius: BorderRadius.circular(9)
              
            ),
            child: ListTile(
              leading: Icon(Icons.play_circle_fill,color: Colors.white),
              title: Text(
                'Java Development',
                style: Styles.headlinestyle1.copyWith(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
              subtitle: Text('Introduction to flutter',style: TextStyle(color: Colors.white)),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

// first the create side bar name is navbar -- navbar.dart

// in the side bar create the first 'course'
// then it go to course file -- course.dart
