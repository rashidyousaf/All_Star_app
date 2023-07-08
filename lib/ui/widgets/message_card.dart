import 'dart:developer';

import '../../consts/consts.dart';
import '../../core/model/message_model.dart';
import '../../core/service/auth_service.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key, required this.messageModel});
  final MessageModel messageModel;
  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();

    log('authid: ${authService.getCurrentUserId()} fromId: ${widget.messageModel.fromId}');
    // return authService.getCurrentUserId() == widget.messageModel.fromId
    //     ? _greenMessage()
    return _greenMessage();
  }

  // sender or another user message

  Widget _whiteMessage() {
    // update last read message if sender and receiver are different
    // if (widget.messageModel.read.isEmpty) {
    //   FirestoreService.updateMessageReadStatus(widget.messageModel);
    //   log('message read updateed');
    // }

    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(right: 30.w, left: 30.w, bottom: 10.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                      bottomRight: Radius.circular(15.r)),
                  color: whiteColor),
              child: Text(
                widget.messageModel.msg,
                style: TextStyle(
                    color: blueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Text(
          widget.messageModel.send,
          // Utils.getFormattedTime(
          //     context: context, time: widget.messageModel.send),
          style: const TextStyle(color: blackColor),
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }

// our or  user message

  Widget _greenMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 10.w,
        ),
        // double tick blue icon  for message read
        if (widget.messageModel.read.isNotEmpty)
          const Icon(
            Icons.done_all_rounded,
            color: greenColor,
          ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          widget.messageModel.send,
          // Utils.getFormattedTime(
          //     context: context, time: widget.messageModel.send),
          style: const TextStyle(color: blackColor),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(right: 30.w, left: 30.w, bottom: 10.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r)),
                  color: greenColor),
              child: Text(
                widget.messageModel.msg,
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
