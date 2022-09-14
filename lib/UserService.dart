import 'package:firebase_auth/firebase_auth.dart';

import 'UserModel.dart';

class UserService {
  FirebaseAuth _auth = FirebaseAuth.instance; //Instance authentification firebase


  Future<UserModel> auth(UserModel userModel) async {
    UserCredential userCredential;
    try { // s'il a un mot de passe et un login reconnu => connexion
      userCredential= await _auth.signInWithEmailAndPassword(email: userModel.login.toString(),
          password: userModel.motdepasse.toString());
    } catch (e) {
      // Sinon création de l'utilisateur
       userCredential= await _auth.createUserWithEmailAndPassword(email: userModel.login.toString(), password: userModel.motdepasse.toString());
    }
    userModel.setUid =userCredential.user?.uid;
    return userModel;
  }
}