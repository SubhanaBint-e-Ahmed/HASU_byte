
import '../res/enums/exercise_status.dart';
import '../utils/extensions/string_extension.dart';


class UserModel {
  late String uuid;
  late String firstName;
  late String lastName;
  late String email;
  late Role userRole;
  late String image;
  late AccountStatus accountStatus;
  late ImageStatus imageStatus;

  UserModel({
    this.uuid = '',
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.userRole = Role.Student,
    this.imageStatus = ImageStatus.Pending,
    this.accountStatus = AccountStatus.Active,
    this.image =
        'https://st4.depositphotos.com/14903220/22197/v/450/depositphotos_221970610-stock-illustration-abstract-sign-avatar-icon-profile.jpg',
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] ?? '';
    firstName = json['firstName'] ?? '';
    lastName = json['lastName'] ?? '';
    email = json['email'] ?? '';
    userRole = json['userRole'].toString().toRole();
    imageStatus = json['imageStatus'].toString().toImageStatus();
    accountStatus = json['accountStatus'].toString().toAccountStatus();
    image = json['image'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['userRole'] = userRole.name;
    data['imageStatus'] = imageStatus.name;
    data['accountStatus'] = accountStatus.name;
    data['image'] = image;
    return data;
  }
}
