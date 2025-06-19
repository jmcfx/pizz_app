import 'package:equatable/equatable.dart';

class Failures extends Equatable {
  @override
  List<Object?> get props => [];
}
class ServerFailure extends Failures {}

class CacheFailure extends Failures {}
class AuthenticationFailure extends Failures {}
