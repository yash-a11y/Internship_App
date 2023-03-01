import 'package:flutter/material.dart';
import 'package:newui/pages/user/techupdates/techvideo.dart';
import 'package:newui/pages/user/techupdates/techview.dart';
import 'package:newui/utills/app_styles.dart';


class TechCard1 extends StatelessWidget {
  const TechCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TechView()));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: Styles.primary1, borderRadius: BorderRadius.circular(13)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage('assets/images/javavc.jpg'))),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("JAVA language" 
                  ,
                  style: Styles.headlinestyle0.copyWith(color: Colors.white,fontSize: 19),
                  textAlign: TextAlign.left,),

              const SizedBox(
                height: 8,
              ),

              Text("JAVA is Object-oriented language...."
                  ,
                  style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,)
            ],
          ),
        ),
      ),
    );
  }
}

class TechCard2 extends StatelessWidget {
  final bool iscolor;
  const TechCard2({super.key, required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TechVideo()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: Styles.primary1,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iscolor == true
                    ? Stack(
                        children: [
                          Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: const DecorationImage(
                                    fit: BoxFit.scaleDown,
                                    image: AssetImage(
                                        'assets/images/android1.png'))),
                          ),
                          Positioned(
                            top: 50,
                            left: 130,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Styles.primary1),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(80, 80)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)))),
                              child: Icon(Icons.play_arrow),
                            ),
                          )
                        ],
                      )
                    : Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('assets/images/javavc.jpg'))),
                      ),
                const SizedBox(
                  height: 8,
                ),
                Text("Android 12" 
                  ,
                  style: Styles.headlinestyle0.copyWith(color: Colors.white,fontSize: 19),
                  textAlign: TextAlign.left,),
                const SizedBox(
                  height: 8,
                ),
                 Text("What is new in android 12..."
                  ,
                  style: Styles.smallheadlinestyle.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,)
              ],
            ),
          )),
    );
  }
}
