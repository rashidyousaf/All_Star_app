import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart' as auth;

import '../../consts/consts.dart';
import '../../consts/utlis.dart';

class AuthService {
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
}
