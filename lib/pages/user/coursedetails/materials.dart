import 'package:flutter/material.dart';
import 'package:newui/pages/user/slides/pdfview.dart';

class Materials extends StatefulWidget {
  const Materials({super.key});

  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [

          TextButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: ((context) => PdfView(pdfname: "android_dev",))));}, 
          child: ListTile(
            
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("android_development.pdf"),
            tileColor: Colors.grey[200],
          ),),
          
         
          SizedBox(
            height: 2,
          ),

          TextButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: ((context) => PdfView(pdfname: "android_cheat",))));}, 
          child: ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("android_cheatSheat.pdf"),
            tileColor: Colors.grey[200],
          ),),
          
        ],
      ),
    );
  }
}
