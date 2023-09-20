import 'package:firebase_auth/firebase_auth.dart';

class Auth_controller{
  Future<String?> registration({
   required String email,
   required String password, 
  })
  async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      return "Successfully created";
    }
    on FirebaseAuthException catch (e){
      if (e.code== "weak-password")
      {
        return "The password provided is too weak.";

      }
      else if (e.code =="email-already-in-use")
      {
        return "An account already exists with that email";
      }
      else {  
        return e.message;
      }
    }
    catch (e){
      return e.toString();
    }
  }
  Future<String?> login({
    required String email,
    required String password,
  
  }) async
  {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return "Success";
    }
    on FirebaseAuthException catch (e){
      if (e.code=="user-not-found"){
        return "No user found.";
      }
      else if (e.code =="wrong-paswword"){
        return "Wrong password. Try again";
      }
      else {
        return e.message;
      }
    }
    catch (e){
      return e.toString();
    }
  }
}