import 'package:flutter/material.dart';
import 'package:flutter_firebase_begin/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService=AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign in page'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in Anon'),
          onPressed:() async{

            dynamic result=await _authService.signInAnon();
            if(result==null)
              {
                print('error sign in');
              }else{
              print('sign in success');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
