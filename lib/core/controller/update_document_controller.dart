import '../../consts/consts.dart';
import '../service/firestore_service.dart';

class UpdateDocumentController extends ChangeNotifier {
  List<String> selectedChoices = [];
  TextEditingController controller = TextEditingController();

  void addSelectedChoice(String choice) {
    selectedChoices.add(choice);
    notifyListeners();
  }

  void removeSelectedChoice(String choice) {
    selectedChoices.remove(choice);
    notifyListeners();
  }

  void updateText(String text) {
    controller.text = text;
    notifyListeners();
  }

  void updateUserInfo(FirestoreService fS, context) {
    if (selectedChoices.isNotEmpty || controller.text.isNotEmpty) {
      fS.updateUserInfo(selectedChoices, controller.text);
      // Add the necessary navigation code here
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/bottomNavScreen',
        (_) => false, // Disable back button on the new route
        arguments: 1, // Set the initial index to 1
      );
    } else if (controller.text.isEmpty) {
      Utils().toastMessage('Please write something about yourself',
          bgColor: redColor);
    } else if (selectedChoices.length <= 2) {
      Utils().toastMessage(
          'Please select at least three items from the interests section',
          bgColor: redColor);
    } else {
      Utils().toastMessage(
          'Please write something about yourself and select your interests',
          bgColor: redColor);
    }
  }
}
