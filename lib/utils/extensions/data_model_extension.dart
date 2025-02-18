import 'package:cocoon/models/user_model.dart';

extension UserModelExtension on UserModel {
  String get fullName => "$firstName $lastName";
}
