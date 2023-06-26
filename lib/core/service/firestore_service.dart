import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:all_star/core/model/user_model.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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

  // get all user data except current user to show
  Future<List<UserModel>> getAllUserInfo() async {
    QuerySnapshot querySnapshot = await userData.get();
    List<UserModel> userList = [];

    for (DocumentSnapshot doc in querySnapshot.docs) {
      if (doc.id != _firebaseAuth.currentUser!.uid) {
        UserModel userModel =
            UserModel.fromJson(doc.data() as Map<String, dynamic>);
        userList.add(userModel);
      }
    }

    return userList;
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

//************This section for push notifications and chats**************/

// this function for notification Permission
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
      carPlay: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log("user give the permission");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      log('user give ther provisional permission');
    } else {
      log('user denied permission');
    }
  }
// this function geting device token

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }
}
