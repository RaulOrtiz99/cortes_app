// cubits/auth_cubit/auth_state.dart

import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  @override
  String toString() => 'AuthInitial';
}

class AuthLoading extends AuthState {
  @override
  String toString() => 'AuthLoading';
}

class AuthSuccess extends AuthState {
  @override
  String toString() => 'AuthSuccess';
}

class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'AuthFailure: $message';
}
