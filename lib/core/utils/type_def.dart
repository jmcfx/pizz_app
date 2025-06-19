import 'package:dartz/dartz.dart';
import 'package:pizz/core/failures/failures.dart';

typedef FailureOr<T> = Either<Failures, T>;
