import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_begin/models/user.dart';

class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user!=null ?User(uid: user.uid): null;



  }


  //sihn in anonymus
Future signInAnon() async{
  try{
    AuthResult result= await _auth.signInAnonymously();
    FirebaseUser user=result.user;
    return _userFromFirebaseUser(user);
  }catch(e){
    print(e.toString());
    return null;
  }
}

  //sign in email and password

  //register with email and password

  //sign out

}

