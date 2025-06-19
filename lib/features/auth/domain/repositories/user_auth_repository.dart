import 'package:pizz/core/utils/type_def.dart';
import 'package:pizz/features/auth/domain/entities/user_entity.dart';

abstract interface class UserAuthRepository {
  Stream<FailureOr<UserEntity>> get user;
  Future<FailureOr<UserEntity>> signUp(String email , String password);
  Future<void> signIn(String email, String password);
  Future<void> logOut();
  Future<void> setUserData(UserEntity myUser);
}
