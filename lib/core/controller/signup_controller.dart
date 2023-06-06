import 'dart:developer';

import '../../consts/consts.dart';
import '../model/user_model.dart';
import '../service/auth_service.dart';
import '../service/firestore_service.dart';

class SignupController extends ChangeNotifier {
  final TextEditingController frontIdImgController = TextEditingController();
  final TextEditingController backIdImgController = TextEditingController();
  final TextEditingController idNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController motherNameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController presentAddressController =
      TextEditingController();
  final TextEditingController originAddressController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController profileImgController = TextEditingController();

  FirestoreService fS = FirestoreService();
  AuthService aS = AuthService();

  void saveUserData() async {
    UserModel userModel = UserModel(
        id: aS.getCurrentUserId(),
        email: aS.getCurrentUserEmail(),
        approve: false,
        frontIdImg: frontIdImgController.text.trim(),
        backIdImg: backIdImgController.text.trim(),
        idNumber: idNumberController.text.trim(),
        name: nameController.text.trim(),
        fatherName: fatherNameController.text.trim(),
        motherName: motherNameController.text.trim(),
        dateOfBirth: dateOfBirthController.text.trim(),
        presentAddress: presentAddressController.text.trim(),
        originAddress: originAddressController.text.trim(),
        gender: genderController.text.trim(),
        occupation: occupationController.text.trim(),
        profileImg: profileImgController.text.trim());

    log("name: ${nameController.text.toString()}");
    await fS.saveUserInfo(userModel);
    log('data save secussfully ');
    clearTextfield();
    notifyListeners();
    // clearTextfield();
  }

  void clearTextfield() {
    frontIdImgController.clear();
    backIdImgController.clear();
    idNumberController.clear();
    nameController.clear();
    fatherNameController.clear();
    motherNameController.clear();
    dateOfBirthController.clear();
    presentAddressController.clear();
    originAddressController.clear();
    genderController.clear();
    occupationController.clear();
    profileImgController.clear();
  }
}
