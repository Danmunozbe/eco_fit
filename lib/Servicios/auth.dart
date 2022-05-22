import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthServer{
  
  //Instancia de firebase.
  final FirebaseAuth _firebaseAuth;

  //Getter de los cambios de la auteticacion
  Stream<User?> get authstatechanges=>_firebaseAuth.authStateChanges();
  AuthServer(this._firebaseAuth);

  Future<void> singOut() async{
    //Cerrar sesion
    await _firebaseAuth.signOut();
  }

  //"email"=correo , "password"=contraseña
  Future<String?> singIn({required String email,required String password}) async {
    try {
      //Intento de iniciar sesion
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch  (e) {
      return e.message;
    }
  }
  //"email"=correo , "password"=contraseña, "username"=nombre de usuario
  Future<String?> singUp({required String email,required String password,required String username}) async {
    try {
      //Intento de crear cuenta
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password).then((value){
        //Guarda la informacion en "UserData"
        FirebaseFirestore.instance.collection("UserData")
        //En la carpeta del usuario
        .doc(value.user!.uid)
        //Guarda el usuario como uan instancia "username"
        .set({"username":username});
      });
      return "Signed up";
    } on FirebaseAuthException catch  (e) {
      return e.message;
    }
  }
}