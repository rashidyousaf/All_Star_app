class UserModel {
  String? id;
  String? email;
  bool? approve;
  String? frontIdImg;
  String? backIdImg;
  String? idNumber;
  String? name;
  String? fatherName;
  String? motherName;
  String? dateOfBirth;
  String? presentAddress;
  String? originAddress;
  String? gender;
  String? occupation;
  String? profileImg;
  List<dynamic>? interests;
  String? about;

  UserModel({
    this.id,
    this.email,
    this.approve,
    this.frontIdImg,
    this.backIdImg,
    this.idNumber,
    this.name,
    this.fatherName,
    this.motherName,
    this.dateOfBirth,
    this.presentAddress,
    this.originAddress,
    this.gender,
    this.occupation,
    this.profileImg,
    this.interests,
    this.about,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      approve: json['approve'],
      frontIdImg: json['frontIdImg'],
      backIdImg: json['backIdImg'],
      idNumber: json['idNumber'],
      name: json['name'],
      fatherName: json['fatherName'],
      motherName: json['motherName'],
      dateOfBirth: json['dateOfBirth'],
      presentAddress: json['presentAddress'],
      originAddress: json['originAddress'],
      gender: json['gender'],
      occupation: json['occupation'],
      profileImg: json['profileImg'],
      interests: json['interests'],
      about: json['about'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'approve': approve,
      'frontIdImg': frontIdImg,
      'backIdImg': backIdImg,
      'idNumber': idNumber,
      'name': name,
      'fatherName': fatherName,
      'motherName': motherName,
      'dateOfBirth': dateOfBirth,
      'presentAddress': presentAddress,
      'originAddress': originAddress,
      'gender': gender,
      'occupation': occupation,
      'profileImg': profileImg,
      'interests': interests,
      'about': about,
    };
  }
}
