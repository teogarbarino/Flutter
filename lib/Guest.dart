import 'package:flutter/material.dart';
import 'package:test/Form.dart';
import 'package:test/Login.dart';
import 'package:test/PhotoUploadTest.dart';
import 'package:test/UserModel.dart';

import 'UserService.dart';

class GuestScreen extends StatefulWidget {
  GuestScreen({Key? key}) : super (key: key);


  @override
  _GuestScreenState createState()=> _GuestScreenState();
}
class _GuestScreenState extends State<GuestScreen> {
  UserService _userService = UserService();
  List<Widget> _widget=[]; //Ajout des liste des differentes view
  int _indexSelected =0; // Initialisation de la vue
  String _login='';
  String _motdepasse="";
  @override
  void initState() {

    super.initState();
    _widget.addAll([
      LoginScreen(onChangedStep: (index, value,value1)=> setState((){
        _indexSelected=index;

        if(value != null) {// si la valeur des champs et differents de null test authentification de l'utilisateur
         _userService.auth(UserModel(
              login: value,
          motdepasse:value1,
          ))
             .then(
                 (value)=> print(value.toJson()));
        }
      })),
      FormScreen(onChangedStep: (index)=> setState(()=>_indexSelected=index)),
    HomeScreen(onChangedStep: (index)=> setState(()=>_indexSelected=index))]);
  }
  @override
  Widget build(BuildContext context){
    return Container(
      child: _widget.elementAt(_indexSelected),
    );
  }
}
