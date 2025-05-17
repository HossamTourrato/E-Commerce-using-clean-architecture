import 'package:dartz/dartz.dart';
import '../../../data/auth/models/user_signin_req.dart';
import '../repository/auth.dart';

class SigninUseCase implements UseCase<Either,UserSigninReq> {

  @override
  Future<Either> call({UserSigninReq ? params}) async {
    return sl<AuthRepository>().signIn(params!);
  }

}