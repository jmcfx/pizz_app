import 'package:pizz/core/utils/type_def.dart';
import 'package:pizz/features/auth/domain/entities/user_entity.dart';

import '../../data/models/user_models.dart';

abstract interface class UserAuthRepository {
  Stream<FailureOr<UserEntity>> get user;
  Future<FailureOr<UserEntity>> signUp(String email, String password);
  Future<FailureOr<void>> signIn(String email, String password);
  Future<void> logOut();
  Future<FailureOr<void>> setUserData(UserModels myUser);
}
