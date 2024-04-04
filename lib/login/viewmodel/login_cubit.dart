import 'package:bloc/bloc.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit() : super(LoginInitial());
}

abstract class LoginState{

}

class LoginInitial extends LoginState{
  
}