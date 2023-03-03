import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';


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
  // File? _pdf;
  // String? _pdfName;

   FilePickerResult? result;

  // Future getPdf() async {
   

  //   FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
 
  //     if (result != null) {
  //       List<File> files = result.paths.map((path) => File(path!)).toList();
  //     } else {
  //       print("No file selected");
  //     }

  //   setState(() {
  //     _pdf = File(result!.files.single.path!);
  //     _pdfName = result.files.single.name;
  //   });
  // }

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
            
            Center(
              child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           const Text('Selected file:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: result?.files.length ?? 0,
                              itemBuilder: (context, index) {
                            return Text(result?.files[index].name ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold));
                          })
                        ],
                      ),),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:  () async{
                     result = await FilePicker.platform.pickFiles(allowMultiple: true );
                      if (result == null) {
                          print("No file selected");
                        } else {
                        setState(() {
                        });
                         result?.files.forEach((element) {
                           print(element.name);
                         });
                        }
                  },
              child: Text('Select PDF'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement upl
                //Navoading logic here
                
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