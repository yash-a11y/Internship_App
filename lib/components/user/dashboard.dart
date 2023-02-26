
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newui/components/user/navbar.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
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
    return Stack(
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
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff330099),
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
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff330099),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add_box_rounded),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text(
                  "Interships",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff330099)),
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
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff330099),
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
                  "Tech-updates",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff330099),
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
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff330099),
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
                  "Achiements",
                  style: TextStyle(color: Colors.white, fontSize: 15),
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
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Courses",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Learning',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(
              'Flutter Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to flutter'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(
              'Android Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to Android'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(
              'Reactjs Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to ReactJs'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(
              'Flutter Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to flutter'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.play_circle_fill,
              size: 30,
            ),
            title: Text(
              'PHP Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to PHP'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text(
              'Java Development',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Introduction to flutter'),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
