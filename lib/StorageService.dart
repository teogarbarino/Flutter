import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart';
import 'UserModel.dart';

class StoragePhoto {
  //Initialisation du cloud
  final firebase_storage.FirebaseStorage storage=
      firebase_storage.FirebaseStorage.instance;
  Future<void> uploadFile(
      String filePath,
      String fileName,
      )async{
    File file =File(filePath);
    //Essaie d'upload d'image sur le cloud firebase
    try{
      await storage.ref('test/$fileName').putFile(file);
    }  catch(e) {
      print('erreur dupload');
    }
  }

  }
