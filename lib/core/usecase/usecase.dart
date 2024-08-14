import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseNoFuture<Type, Params> {
  Type call(Params params);
}

abstract class NoArgUseCase<Type> {
  Future<Either<Failure, Type>> call();
}

/// Class to handle when useCase don't need params
class NoParams {}
