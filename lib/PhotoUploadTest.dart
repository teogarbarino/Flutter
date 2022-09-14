import 'package:test/PhotoUploadTest.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/Form.dart';
import 'package:test/Login.dart';
import 'package:test/Guest.dart';
import 'package:test/StorageService.dart';
class HomeScreen extends StatefulWidget{
  final Function(int) onChangedStep;
  HomeScreen({Key? key,required this.onChangedStep}) : super (key: key);

  @override
  _HomeScreenState createState()=> _HomeScreenState();
}
  class _HomeScreenState extends State<HomeScreen> {
    @override
    Widget build(BuildContext context){
      final StoragePhoto Storage = StoragePhoto();
      return Scaffold(
      appBar: AppBar(
      title: Text('Cloud storage'),


      ),
      body:Column(
      children: [
        Center(
          child: ElevatedButton(onPressed: ()async{//Ne marche pas
             final  results= await FilePicker.platform.pickFiles(
            allowMultiple:false, //une seule photo
            type:FileType.custom,
            allowedExtensions: ['png','jpg'], // verification d'extension

          );
             if(results==null){
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('no file direrectory'),),);
               return null; //On regarde si le fichier est pas null
             }

          final path=results?.files.single.path; // path du fichier
          final fileName= results?.files.single.name; // nom du fichier
          Storage.
          uploadFile(path!, fileName!).then((value) => print('essaie'));
             
          },
      child: Text('Upload file')),
        )
  ],
  )
      );
  }

  }
