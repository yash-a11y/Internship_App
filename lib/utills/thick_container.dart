import 'package:flutter/material.dart';
import 'package:newui/utills/app_styles.dart';


class CircularContain extends StatelessWidget {
  final bool? iscolor ;

  const CircularContain({Key ? key,this.iscolor}) : super(key : key);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(3.0),
        decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(width: 2.5,color: Styles.secondary)

      ),
    );
  }
}