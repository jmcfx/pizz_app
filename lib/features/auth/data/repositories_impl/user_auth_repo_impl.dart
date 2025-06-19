import '../../../../core/mapper/map.dart';
import '../../../../core/utils/repo_safe_call_mixin.dart';
import '../data_sources/remote/user_auth_data_source.dart';
import '../models/user_models.dart';

import '../../../../core/utils/type_def.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_auth_repository.dart';

class UserAuthRepoImpl with RepoSafeCallMixin implements UserAuthRepository {
  final UserAuthDataSource _userAuthDataSource;
  final Mappr _mappr;

  UserAuthRepoImpl({
    required UserAuthDataSource userAuthDataSource,
    required Mappr mapper,
  }) : _userAuthDataSource = userAuthDataSource,
       _mappr = mapper;

  UserAuthDataSource get userAuthDataSource => _userAuthDataSource;

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<void> setUserData(UserEntity myUser) {
    // TODO: implement setUserData
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(String email, String password) =>
      _userAuthDataSource.signInWithEmailAndPassword(email, password);

  @override
  Future<FailureOr<UserEntity>> signUp(String email, String password) =>
      callWithErrorHandling<UserEntity>(() {
        final fetchedSignUpInfo = _userAuthDataSource
            .signUpWithEmailAndPassword(email, password);
        return _mappr.convert(fetchedSignUpInfo);
      });

  @override
  Stream<FailureOr<UserEntity>> get user =>
      streamWithErrorHandling<UserEntity>(() {
        final fetchedUserAuth = _userAuthDataSource.getUserAuthentication().map(
          (userModels) => _mappr.convert<UserModels, UserEntity>(userModels),
        );
        return fetchedUserAuth;
      });
}
