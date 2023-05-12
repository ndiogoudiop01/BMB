import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        "670640972253-ke2d8ttjtuess57a3d0hi5spojp2ip7e.apps.googleusercontent.com",
  );

  //COnnexion avec le google
  Future<UserCredential> signInWithGoogle() async {
    //Declencher le flux d'auntification
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    //obtenir les details  d'autorisation de la demande
    final googleAuth = await googleUser!.authentication;
    /** Creer un nouvel identifiant */
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    /** Une fois connecte, renvoyez l'identifiant de l'utilisateur */
    return await _auth.signInWithCredential(credential);
  }

  /**L'etat de l'utilisateur en temps reel */
  Stream<User?> get user => _auth.authStateChanges();
}
