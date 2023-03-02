import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../utills/app_styles.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("Coming soon...",style: Styles.headlinestyle,),
        ),
    );
  }
}