import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newui/components/login.dart';

import '../utills/app_styles.dart';

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

 
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState()
  {
    super.initState();
    
     Future.delayed(const Duration(seconds: 4),() 
    {

      Navigator.pushReplacement(context,  MaterialPageRoute( builder: (context) => const Login()));
    }



    );

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primary1,
      body:Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
                  
              children: [
                Container(
                  height: 119,
                  width: 119,
                  
                  decoration: const BoxDecoration(
                   
                    image: DecorationImage(
                      
                     
                      image: 
                    
                    AssetImage(
                      
                      "assets/images/symbolw.png"
                    ))
                  ),
                ),
                 Container(
                  width: 260,
                  height: 80,
                  decoration: const BoxDecoration(
          
                    image: DecorationImage(
                      
                      fit: BoxFit.contain,
                      image: 
                    AssetImage(
                      "assets/images/TIHw.png"
                    ))
                  ),
                ),
                  
              ],
            ),
          ),
        ),
      
    );
  }
}