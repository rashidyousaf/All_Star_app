import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:all_star/core/service/firestore_service.dart';
import 'package:all_star/ui/views/auth/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

import '../../consts/consts.dart';

class AuthService {
  // this instance of firestore services
  FirestoreService fS = FirestoreService();
// auth firebase instance

  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  // get user id

  getCurrentUserId() {
    return _firebaseAuth.currentUser!.uid;
  }

  // get user email
  getCurrentUserEmail() {
    return _firebaseAuth.currentUser!.email;
  }

// Create a new user account with email and password
  Future creatUserWithEmailAndPassword(
      String email, String password, context) async {
    try {
      final credetial = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/firstInfoScreen', (route) => false);
        log("user created sucessfully");
      });
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Utils().toastMessage(
          'The password provided is too weak.',
        );
      } else if (e.code == 'email-already-in-use') {
        Utils().toastMessage(
          'The account already exists for that email.',
        );
      } else if (e.code == 'invalid-email') {
        Utils().toastMessage(
          'The email address is not valid.',
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

/* this function for signIn with Email and Password */
  Future signInWithEmailAndPassword(
    String email,
    String password,
    context,
  ) async {
    try {
      final credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Utils().toastMessage('Login successfully.', bgColor: redColor);
        fS.route(context);
      });
      // return _userFromFirebase(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Utils()
            .toastMessage('No user found for that email.', bgColor: redColor);
      } else if (e.code == 'wrong-password') {
        Utils().toastMessage('Wrong password provided for that user.',
            bgColor: redColor);
      } else if (e.code == 'invalid-email') {
        Utils()
            .toastMessage('The email address is not valid.', bgColor: redColor);
      }
    } catch (e) {
      log(" error ${e.toString()}");
    }
    return null;
  }

  // this section for recover password
  recoverPassword(String email, context) {
    _firebaseAuth.sendPasswordResetEmail(email: email).then((value) {
      Utils().toastMessage(
          'We have send you email to recover password please check email',
          bgColor: greenColor);

      Navigator.pushNamed(context, '/signinScreen');
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }

  // this is for signout user

  Future<void> signOut(BuildContext context) async {
    await _firebaseAuth.signOut().then((value) {
      Utils().toastMessage('Sign Out.', bgColor: greenColor);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const SigninScreen()),
          (route) => false);
    }).onError((error, stackTrace) {
      log(error.toString());
    });
  }
}
