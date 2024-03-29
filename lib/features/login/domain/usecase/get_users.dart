import 'package:rest_api/core/injector/set_up_locator.dart';

import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/repository/auth.dart';
import '../../presentation/bloc/auth/authentication_bloc.dart';
import '../entities/authenticated_user.dart';

class GetUserUseCase implements UseCase<AuthenticatedUserEntity, (String, String)> {
  final AuthenticationRepositoryImpl _repository = serviceLocator();
  @override
  Future<Either<Failure, AuthenticatedUserEntity>> call(
      (String, String) params) {
    return _repository.getUser(params.$1, params.$2);
  }
}
