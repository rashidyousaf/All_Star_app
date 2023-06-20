import 'package:all_star/core/service/firestore_service.dart';
import '../../../../consts/consts.dart';
import '../../../core/model/user_model.dart';
import '../custom_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FirestoreService fS = FirestoreService();
    return FutureBuilder<UserModel>(
      future: fS.getUserInfo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserModel? userModel = snapshot.data;
          if (userModel != null) {
            print('UserModel: $userModel');
            return CustomProfileScreen(
              profileImg: userModel.profileImg ?? '',
              frontId: userModel.idNumber ?? '',
              namE: userModel.name ?? '',
              fatherName: userModel.fatherName ?? '',
              genDer: userModel.gender ?? '',
              mobileNumber: 'number',
              occupation: userModel.occupation ?? '',
              nidNumber: userModel.idNumber ?? '',
              address: userModel.presentAddress ?? '',
            );
          } else {
            // Handle the case where snapshot.data is null
            return const Text('User data not found');
          }
        } else if (snapshot.hasError) {
          print('Error: ${snapshot.error}');
          return Text('Error: ${snapshot.error}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
