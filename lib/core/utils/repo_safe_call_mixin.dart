import 'package:dartz/dartz.dart';
import '../errors/exceptions.dart';
import 'type_def.dart';

import '../failures/failures.dart';

mixin RepoSafeCallMixin {
  Future<FailureOr<T>> callWithErrorHandling<T>(
    Future<T> Function() call,
  ) async {
    try {
      final result = await call();
      return right(result);
    } catch (e) {
      return left(_mapError(e));
    }
  }

  Stream<FailureOr<T>> streamWithErrorHandling<T>(
    Stream<T> Function() streamFactory,
  ) async* {
    try {
      await for (final item in streamFactory()) {
        yield right(item);
      }
    } catch (e) {
      yield left(_mapError(e));
    }
  }
}

// this map both Exceptions & Error ......
Failures _mapError(Object param) {
  return switch (param) {
    CacheException _ => CacheFailure(),
   ServerException _ => ServerFailure(),
     _ => AuthenticationFailure(),

  };
}
