import 'package:all_star/consts/consts.dart';
import 'package:all_star/core/model/user_model.dart';
import 'package:all_star/core/service/firestore_service.dart';
import 'package:all_star/ui/views/marriage_portal/marriage_home_screen/profile_details_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MarriageHomeScreen extends StatelessWidget {
  const MarriageHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirestoreService fS = FirestoreService();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: FutureBuilder<List<UserModel>>(
          future: fS.getAllUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Utils().progressIndecator(color: greenColor),
              );
            } else if (snapshot.hasError) {
              Utils().toastMessage('Something Wrong', bgColor: redColor);
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              List<UserModel> userData = snapshot.data!;
              return Column(
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    children: [
                      Text(
                        findProposal,
                        style: myStyle(
                            size: 18.sp,
                            weight: FontWeight.w600,
                            color: nblueColor),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, '/notificationsScreen'),
                        child: Image.asset(
                          icBell2,
                          width: 23.w,
                          height: 22.h,
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/messagesScreen'),
                        child: Image.asset(
                          icChat,
                          width: 27.w,
                          height: 22.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: userData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.w,
                          mainAxisSpacing: 4.h),
                      itemBuilder: (BuildContext context, int index) {
                        UserModel user = userData[index];
                        // this section when click on any user profile or picture on screen then move another screen
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileDetailWidget(
                                      userData: user,
                                    )),
                          ),
                          child: CachedNetworkImage(
                              imageUrl: user.profileImg ?? '',
                              placeholder: (context, index) =>
                                  Utils().progressIndecator(),
                              imageBuilder: (context, imageProvider) {
                                return Container(
                                  padding:
                                      EdgeInsets.only(left: 13.w, top: 120.h),
                                  width: 165.w,
                                  height: 179.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.fill),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          user.name.toString(),
                                          style: myStyle(
                                              size: 14.sp,
                                              weight: FontWeight.w600,
                                              color: whiteColor),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Age: 28',
                                          style: myStyle(
                                              size: 12.sp,
                                              weight: FontWeight.w500,
                                              color: whiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
            return const Center(
              child: Text('data'),
            );
          },
        ),
      ),
    );
  }
}
