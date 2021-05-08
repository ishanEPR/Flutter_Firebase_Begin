import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;
  //sihn in anonymus
Future c() async{
  try{

    AuthResult result= await _auth.signInAnonymously();
    FirebaseUser user=result.user;
    return user;
  }catch(e){
print(e.toString());
return null;
  }
}

  //sign in email and password

  //register with email and password

  //sign out

}

