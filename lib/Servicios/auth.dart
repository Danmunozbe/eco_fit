import 'package:firebase_auth/firebase_auth.dart';
class AuthServer{
  final FirebaseAuth _firebaseAuth;
  Stream<User?> get authstatechanges=>_firebaseAuth.authStateChanges();
  AuthServer(this._firebaseAuth);
    Future<void> singOut() async{
      await _firebaseAuth.signOut();
    }
   Future<String?> singIn({required String email,required String password}) async {
     try {
        await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        return "Signed in";
     } on FirebaseAuthException catch  (e) {
       return e.message;
     }
   }
   Future<String?> singUp({required String email,required String password}) async {
     try {
        await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
        return "Signed up";
     } on FirebaseAuthException catch  (e) {
       return e.message;
     }
   }
}