import 'package:all_star/core/service/firestore_service.dart';
import '../../../../consts/consts.dart';
import '../../../core/model/user_model.dart';
import '../custom_profile_screen.dart';
import 'dart:developer';

class ProfileScreen extends StatelessWidget {
  final Function(List<dynamic> data)? onDataReceived;

  const ProfileScreen({Key? key, this.onDataReceived}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirestoreService fS = FirestoreService();
    return FutureBuilder<UserModel>(
      future: fS.getUserInfo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserModel? userModel = snapshot.data;
          if (userModel != null) {
            final List? data = userModel.interests;
            onDataReceived
                ?.call(data!); // Add null check before invoking the callback
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
          log('Error: ${snapshot.error}');
          return Text('Error: ${snapshot.error}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
