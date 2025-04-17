import 'package:bloc/bloc.dart';
import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:carfix_app/domain/entities/result_entity.dart';
import 'package:carfix_app/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repo) : super(const AuthState.initial()) {
    on<_Register>(_onRegister);
  }

  final AuthRepository _repo;

  void _onRegister(_Register event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _repo.register(
      phone: event.phone,
    );
    switch (result) {
      case SuccessEntity<void>():
        emit(const AuthState.registerSuccess());
      case FailureEntity<void>():
        emit(AuthState.error(result.error));
    }
  }
}
