import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_storage/firebase_storage.dart';

import '../../consts/consts.dart';

// ignore: must_be_immutable
class CustomImagePicker extends StatefulWidget {
  CustomImagePicker(
      {super.key,
      this.showGallery = true,
      required this.img,
      required this.height,
      required this.width,
      required this.onChanged});

  TextEditingController controller = TextEditingController();
  final bool showGallery;

  final double width;
  final double height;
  final String img;
  final ValueChanged onChanged;

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  String imgeUrl = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: InkWell(
        onTap: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    widget.showGallery ? 'Please upload' : 'Please capture',
                    style: TextStyle(color: greenColor, fontSize: 18.sp),
                  ),
                ),
                content: widget.showGallery
                    ? isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  Navigator.of(context).pop();
                                  // capture image from gallery
                                  ImagePicker imagePicker = ImagePicker();
                                  XFile? file = await imagePicker.pickImage(
                                    source: ImageSource.gallery,
                                  );

                                  if (file == null) return;

                                  setState(() {
                                    isLoading = true;
                                  });

                                  try {
                                    // Upload image to Firestore
                                    String uniqueFileName = DateTime.now()
                                        .millisecondsSinceEpoch
                                        .toString();
                                    Reference referenceRoot =
                                        FirebaseStorage.instance.ref();
                                    Reference referenceDirImages =
                                        referenceRoot.child('images');
                                    Reference referenceImageToUpload =
                                        referenceDirImages
                                            .child(uniqueFileName);

                                    await referenceImageToUpload
                                        .putFile(File(file.path));

                                    // Get download URL
                                    String imageUrl =
                                        await referenceImageToUpload
                                            .getDownloadURL();

                                    widget.controller.text = imageUrl;
                                  } catch (error) {
                                    // Handle error
                                  }

                                  setState(() {
                                    isLoading = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  backgroundColor: greenColor,
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                                child: Text(
                                  'Gallery',
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  Navigator.of(context).pop();
                                  // capture image from camera
                                  ImagePicker imagePicker = ImagePicker();
                                  XFile? file = await imagePicker.pickImage(
                                    source: ImageSource.camera,
                                  );

                                  if (file == null) return;

                                  setState(() {
                                    isLoading = true;
                                  });

                                  try {
                                    // Upload image to Firestore
                                    String uniqueFileName = DateTime.now()
                                        .millisecondsSinceEpoch
                                        .toString();
                                    Reference referenceRoot =
                                        FirebaseStorage.instance.ref();
                                    Reference referenceDirImages =
                                        referenceRoot.child('images');
                                    Reference referenceImageToUpload =
                                        referenceDirImages
                                            .child(uniqueFileName);

                                    await referenceImageToUpload
                                        .putFile(File(file.path));

                                    // Get download URL
                                    String imageUrl =
                                        await referenceImageToUpload
                                            .getDownloadURL();
                                    widget.onChanged(imageUrl);
                                    widget.controller.text = imageUrl;
                                  } catch (error) {
                                    // Handle
                                  }

                                  setState(() {
                                    isLoading = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  backgroundColor: greenColor,
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                                child: Text(
                                  'Camera',
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ),
                            ],
                          )
                    : const SizedBox(),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: greenColor, fontSize: 15.sp),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Image.asset(
          widget.img,
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
