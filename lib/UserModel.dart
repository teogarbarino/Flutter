import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  //Model Utilisateur
  String ?login;
  String ?motdepasse;
  String ?uid;
  UserModel({
    this.uid,
    this.login,
    this.motdepasse,
});
set setUid(value)=> uid=value;

Map<String, dynamic>toJson() =>{
  'uid' : uid,
  'login' : login,
  'motdepasse' : motdepasse,
};


}