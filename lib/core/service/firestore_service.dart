import 'dart:developer';

import 'package:all_star/core/model/user_model.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  CollectionReference userData =
      FirebaseFirestore.instance.collection('userData');

  Future<void> saveUserInfo(UserModel userModel) async {
    try {
      await userData.doc(userModel.id).set(userModel.toJson());
    } catch (e) {
      log("error when user data save in firestore class ${e.toString()}");
    }
  }
}
