import 'package:flutter/material.dart';

class Materials extends StatefulWidget {
  const Materials({super.key});

  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("pdf 1"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("pdf 2"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("pdf 3"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("pdf 4"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf_rounded),
            title: Text("pdf 5"),
            tileColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
