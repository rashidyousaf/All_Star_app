import 'package:all_star/consts/consts.dart';
import 'package:all_star/core/model/message_model.dart';
import 'package:all_star/core/model/user_model.dart';
import 'package:all_star/core/service/auth_service.dart';
import 'package:all_star/core/service/firestore_service.dart';
import 'package:all_star/ui/widgets/message_card.dart';

class ChatScreen extends StatefulWidget {
  final String id;
  final String name;
  final String img;
  const ChatScreen(
      {super.key, required this.id, required this.name, required this.img});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> list = [];

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();

    FirestoreService fS = FirestoreService();
    return Scaffold(
      backgroundColor: lgreyColor,
      body: Column(

          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25.sp,
                  ),
                ),
                // this button for more right side of image
                IconButton(
                  onPressed: () {
                    showMenu<String>(
                      context: context,
                      position: RelativeRect.fromLTRB(50.w, 0.h, 0, 0),
                      items: <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'view',
                          child: Text('View Profile'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'delete',
                          child: Text('Delete Chat'),
                        ),
                      ],
                      elevation: 8.0,
                    ).then((value) {
                      // Handle selected menu item
                      if (value == 'view') {
                        Navigator.pushNamed(context, '/marriageProfileScreen');
                      } else if (value == 'delete') {}
                    });
                  },
                  icon: Icon(
                    Icons.more_vert,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            // this section for profile image
            Container(
              width: 96.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Image.asset(
                icPerson,
                width: 24.w,
                height: 31.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              belleBenson,
              style: myStyle(
                  size: 18.sp, weight: FontWeight.w600, color: nblueColor),
            ),
            Expanded(
              child: StreamBuilder(
                stream: fS.getAllMessages(authService.getCurrentUserId()),
                builder: (BuildContext context, snapshot) {
                  switch (snapshot.connectionState) {
                    // if dat is loading
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                    // return const SizedBox(
                    //     child: Text('data'),
                    //     );
                    // if som e or all data is loaded then show it
                    case ConnectionState.active:
                    case ConnectionState.done:
                      final data = snapshot.data?.docs;
                      list = data
                              ?.map((e) => MessageModel.fromJson(e.data()))
                              .toList() ??
                          [];

                      if (list.isNotEmpty) {
                        return ListView.builder(
                            // reverse: true,
                            itemCount: list.length,
                            // padding: EdgeInsets.only(top: 10.h),
                            // physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return MessageCard(
                                messageModel: list[index],
                              );
                            });
                      } else {
                        return Center(
                            child: Text(
                          "Say hii! 👋",
                          style: TextStyle(fontSize: 20.sp, color: greenColor),
                        ));
                      }
                  }

                  // Return a column containing all of the document widgets
                },
              ),
            ),
            _chatInput(),
          ]),
    );
  }

  Widget _chatInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: _textController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: 'Type a message...',
                    hintStyle: TextStyle(color: greyColor),
                    border: InputBorder.none),
              )),
              IconButton(
                  onPressed: () {
                    if (_textController.text.isNotEmpty) {
                      FirestoreService.sendMessage(
                          widget.id, _textController.text);
                      _textController.text = '';
                    }
                  },
                  icon: const Icon(
                    Icons.send,
                    color: greenColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
