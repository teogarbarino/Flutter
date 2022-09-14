import 'package:flutter/material.dart';
 class FormScreen extends StatefulWidget {
   final Function(int) onChangedStep;
   FormScreen({Key? key,required this.onChangedStep}) : super (key: key);


  @override
  _FormScreenState createState()=> _FormScreenState();
}
class _FormScreenState extends State<FormScreen> {
   // formulaire avec les differents champs
   String _email='';
   String _civilite='';
   String _nom='';
   String _prenom='';
   String _date='';
   String _sexe='';
   String _tel='';
   @override
  Widget build(BuildContext context){
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
         leading:IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: ()=> widget.onChangedStep(0),
         ),
       ),
         body: Center(
         child:SingleChildScrollView(child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:[
               Text('Formulaire',
           style: TextStyle(
           color: Colors.blue,
           fontSize: 30,
         ),),
               SizedBox(
                 height: 50.0,
               ),
               Form(
                 child:Column(
                 children: [Text('Email',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                     onChanged:(value) => setState(()=>_email=value),
                     decoration: InputDecoration(hintText: 'Ex:marcel.dupont@domain.fr',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),

               SizedBox(
                 height: 20.0,
               ),

               Form(child:Column(
                 children: [Text('Civilités',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                     onChanged:(value) => setState(()=>_civilite=value),
                     decoration: InputDecoration(hintText: 'Ex:Mr',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),
               SizedBox(
                 height: 20.0,
               ),
               Form(child:Column(
                 children: [Text('Nom',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                       onChanged:(value) => setState(()=>_nom=value),
                     decoration: InputDecoration(hintText: 'Ex:DUPONT',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),
               SizedBox(
                 height: 20.0,
               ),
               Form(child:Column(
                 children: [Text('Prénom',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                       onChanged:(value) => setState(()=>_prenom=value),
                     decoration: InputDecoration(hintText: 'Ex:Marcel',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),
               SizedBox(
                 height: 20.0,
               ),
               Form(child:Column(
                 children: [Text('Date de Naissance',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                       onChanged:(value) => setState(()=>_date=value),
                     decoration: InputDecoration(hintText: 'Ex:20/12/1984',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),
               SizedBox(
                 height: 20.0,
               ),
               Form(child:Column(
                 children: [Text('Sexe',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 20,
                   ),),
                   TextFormField(
                     onChanged:(value) => setState(()=>_sexe=value),
                     decoration: InputDecoration(hintText: 'Ex:Homme',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),
               SizedBox(
                 height: 20.0,
               ),
               Form(
                 child:Column(
                 children: [Text('Numéro de téléphone',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 25,
                   ),),
                   TextFormField(
                     onChanged:(value) => setState(()=>_tel=value),
                     decoration: InputDecoration(hintText: 'Ex:0644944447',border:OutlineInputBorder(borderSide:BorderSide(color: Colors.grey))),
                   )],
               ) ,),



               ElevatedButton(
                 onPressed:()=> {widget.onChangedStep(2),print("email:"+_email+" civilité:"+_civilite+" nom:"+_nom+" prenom:"+_prenom+" dateNaissance:"+_date+" sexe:"+_sexe+" tel:"+_tel)
                 ,},
                 child: Text(
                   'envoyer'.toUpperCase(),
                   style: TextStyle(
                     color :Colors.white,
                   ),
                 ),

               )


             ]
         ),),
       ),)
     );
   }
}
