import 'package:bloc/bloc.dart';
import 'package:carfix_app/domain/entities/api_response_entity.dart';
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
    try {
      final response = await _repo.register(
        phone: event.phone,
        username: event.username,
      );
      emit(const AuthState.registerSuccess());
    } on Object catch (error) {
      if (error is ApiResponseError) {
        emit(AuthState.error(error));
      } else {
        emit(
          AuthState.error(
            ApiResponseError(message: error.toString()),
          ),
        );
      }
    }
  }
}
