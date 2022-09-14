import 'package:flutter/material.dart';
import 'package:test/Form.dart';

class LoginScreen extends StatefulWidget {
  final Function(int,String,String) onChangedStep;
  LoginScreen(
      {Key? key,
  required this.onChangedStep ,}) : super (key: key);


  @override
  _LoginScreenState createState()=> _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecret = true;
  String _login='';
  String _motdepasse='';
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
    body: Center(
    child:SingleChildScrollView(child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[Text('Connexion'.toUpperCase(),
    style: TextStyle(fontSize:30,),),
      SizedBox(
        height: 20.0,
      ),
      Form(child:Column(
        children: [Text('Login',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
          ),),
          TextFormField(
            onChanged:(value) => setState(()=>_login=value),
            decoration: InputDecoration(hintText: 'Ex:john.Dupont@gmail.com',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
          )],
      ) ,),
      Form(child:Column(
        children: [Text('Mot de passe',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
          ),),
          TextFormField(
            onChanged:(value) => setState(()=>_motdepasse=value),
            obscureText: _isSecret,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap:()=> setState(() =>_isSecret = !_isSecret),
                  child: Icon(!_isSecret
                ? Icons.visibility
                : Icons.visibility_off,
                ),
              ),
                hintText: 'Ex:124474',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
          )],

      ) ,),
      ElevatedButton(
        onPressed:()=>{widget.onChangedStep(1,_login,_motdepasse),} ,
        child: Text(
          'envoyer'.toUpperCase(),
          style: TextStyle(
            color :Colors.white,
          ),
        ),

      )]
    ),
    ),
    ),
    ),
    );
    }
}

