import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.assignment_add),
            title: Text("Assignment 1"),
            tileColor: Colors.grey[200],
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UploadPdf()));
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_add),
            title: Text("Assignment 2"),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.assignment_add),
            title: Text("Assignment 3"),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.assignment_add),
            title: Text("Assignment 4"),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.assignment_add),
            title: Text("Assignment 5"),
            tileColor: Colors.grey[200],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class UploadPdf extends StatefulWidget {
  const UploadPdf({super.key});

  @override
  State<UploadPdf> createState() => UploadPdfState();
}

class UploadPdfState extends State<UploadPdf> {
  File? _pdf;
  String? _pdfName;

  Future getPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result == null) {
      // User canceled the picker
      return;
    }

    setState(() {
      _pdf = File(result.files.single.path!);
      _pdfName = result.files.single.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload PDF'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            _pdf == null
                ? Text('No PDF selected.')
                : Column(
                    children: [
                      TextButton(
                          onPressed: () async{
                            
                          },
                          child: Text('$_pdfName'))
                    ],
                  ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: getPdf,
              child: Text('Select PDF'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement uploading logic here
              },
              child: Text('Upload PDF'),
            ),
          ],
        ),
      ),
    );
  }
}



/*
class UploadFiles extends StatefulWidget {
  const UploadFiles({super.key});

  @override
  State<UploadFiles> createState() => _UploadFilesState();
}

class _UploadFilesState extends State<UploadFiles> {
  late File _pdfFile;
  String _pdfUrl = '';
  bool _isLoading = false;

  final picker = ImagePicker();

  Future<void> _pickPdf() async {
    final pickedFile = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (pickedFile != null) {
      setState(() {
        _pdfFile = File(pickedFile.files.single.path!);
        _isLoading = true;
      });
      print("File upload $pickedFile");
      await _uploadPdf();
    }
  }

  Future<void> _uploadPdf() async {
    final pdfStorageRef = FirebaseStorage.instance
        .ref()
        .child('pdfs/${_pdfFile.path.split('/').last}');
    final uploadTask = pdfStorageRef.putFile(_pdfFile);
    final snapshot = await uploadTask.whenComplete(() {});
    final pdfUrl = await snapshot.ref.getDownloadURL();

    setState(() {
      _pdfUrl = pdfUrl;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf View'),
        centerTitle: true,
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : _pdfUrl.isNotEmpty
                ? PDFView(
                    filePath: _pdfUrl,
                    enableSwipe: true,
                    swipeHorizontal: true,
                    autoSpacing: false,
                  )
                : Text('No Pdf Selected'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickPdf,
        tooltip: 'Pick PDF',
        child: Icon(Icons.upload_file),
      ),
    );
  }
}

*/