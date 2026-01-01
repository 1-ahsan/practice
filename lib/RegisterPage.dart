import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget{
  register({super.key});

  State<register> createState() => _registerState();
}

class _registerState extends State<register>{

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
    try{
      UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return;
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {

        String message = "Registration failed";
        if (e.code == 'email-already-in-use') {
          message = "This Sap ID is already registered.";
        } else if (e.code == 'weak-password') {
          message = "The password is too weak.";
        } else {
          message = e.message ?? message;
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
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