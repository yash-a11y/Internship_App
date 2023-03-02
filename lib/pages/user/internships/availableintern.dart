import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newui/pages/user/internships/interships.dart';

import '../../../extra/info.dart';

class AvailIntern extends StatefulWidget {
  const AvailIntern({super.key});

  @override
  State<AvailIntern> createState() => _AvailInternState();
}

class _AvailInternState extends State<AvailIntern> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:
                internshipinfo.map((e) => InternView(interninfo: e,isapply: false,)).toList(),
          ),
        );
      
  }


  
}

class AppliedIntern extends StatelessWidget {
  const AppliedIntern({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:
                internshipinfo.map((e) => InternView(interninfo: e, isapply: true,)).toList(),
          ),
        );
      
  }


  
}

