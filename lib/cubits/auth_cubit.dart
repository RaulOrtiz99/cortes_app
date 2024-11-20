// cubits/auth_cubit/auth_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void login(String username, String password) async {
    emit(AuthLoading());
    // Simulación de autenticación
    await Future.delayed(Duration(seconds: 2));
    if (username == 'user' && password == 'password') {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure('Usuario o contraseña incorrectos'));
    }
  }
}
