import 'dart:io';

import 'package:oman_promo/features/profile/domain/models/profile_model.dart';
import 'package:oman_promo/interface/repo_interface.dart';

abstract class ProfileRepositoryInterface implements RepositoryInterface{

  Future<dynamic> getProfileInfo();
  Future<dynamic> updateProfile(ProfileModel userInfoModel, String pass, File? file, String token);
}