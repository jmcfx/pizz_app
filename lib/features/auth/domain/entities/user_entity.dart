import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String name, email, userId;

  final bool hasActiveCart;

  const UserEntity({
    required this.userId,
    required this.name,
    required this.email,
    required this.hasActiveCart,
  });

  @override
  List<Object?> get props => [name, email, userId, hasActiveCart];
}
