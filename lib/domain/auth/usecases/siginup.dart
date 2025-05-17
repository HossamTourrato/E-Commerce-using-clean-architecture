import 'package:dartz/dartz.dart';

import '../../../data/auth/models/user_creation_req.dart';
import '../repository/auth.dart';


class SignupUseCase implements UseCase<Either,UserCreationReq> {


  @override
  Future<Either> call({UserCreationReq ? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }

  
}