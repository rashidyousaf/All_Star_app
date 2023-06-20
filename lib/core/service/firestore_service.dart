import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:all_star/core/model/user_model.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../consts/consts.dart';

class FirestoreService {
  // this instance of firebase auth
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  CollectionReference userData =
      FirebaseFirestore.instance.collection('userData');

// save user data
  Future<void> saveUserInfo(UserModel userModel) async {
    try {
      await userData.doc(userModel.id).set(userModel.toJson());
    } catch (e) {
      log("error when user data save in firestore class ${e.toString()}");
    }
  }

  // this function for update interest and about user
  Future<void> updateUserInfo(List<String> interests, String about) async {
    try {
      await userData.doc(_firebaseAuth.currentUser!.uid).update({
        'interests': interests,
        'about': about,
      });
    } catch (e) {
      log("Error when updating user data in Firestore: ${e.toString()}");
    }
  }

  // get user data
  Future<UserModel> getUserInfo() async {
    DocumentSnapshot doc =
        await userData.doc(_firebaseAuth.currentUser!.uid).get();
    UserModel userModel =
        UserModel.fromJson(doc.data() as Map<String, dynamic>);

    return userModel;
  }

  /*  this section for approved or not if approved then home screen if not then pedding   ******************/

  route(context) {
    userData
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('approve') == false) {
          log("Status False");
          Navigator.pushNamed(context, '/sixthInfoScreen');
          // );
          // getPlayerInfo();
        } else {
          log("Satus true");
          Navigator.pushNamed(context, '/bottomNavScreen');
          // getCoachInfo();
        }
      } else {
        Navigator.pushNamed(context, '/firstInfoScreen');
      }
    });
  }
}
