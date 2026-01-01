import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  Login({super.key});

  State<Login> createState() => _registerState();
}

class _registerState extends State<Login>{

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _email.dispose();
    _pass.dispose();
  }

  Future<void> _submit() async{
    String email = _email.text.trim();
    String pass = _pass.text.trim();
    email = "$email@email.com";

    UserCredential  userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: pass,
    );

    if(userCredential.user != null){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Logedin"))
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          TextField(
            controller: _email,
            decoration: InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
          TextField(
            controller: _pass,
            decoration: InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
          ElevatedButton(
            onPressed: (){
              _submit();
            },
            child: Text("submit"),
          ),
        ],
      ),
    );
  }
}