import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';
part 'welcome_bloc.freezed.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState.initial()) {
    on<_Started>(_onStarted);
    on<_GetPermissions>(_onGetPermissions);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<WelcomeState> emit) async {
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onGetPermissions(
    _GetPermissions event, Emitter<WelcomeState> emit) async {
    emit(state.copyWith(isLoading: true));
  
    try {
      final status = await Permission.location.status;
      if (status.isGranted) {
        emit(
          state.copyWith(
            isLoading: false,
            isPermissionGranted: true,
          ),
        );
        return;
      }
  
      final result = await Permission.location.request();
      if (result.isGranted) {
        emit(
          state.copyWith(
            isLoading: false,
            isPermissionGranted: true,
          ),
        );
      } else if (result.isPermanentlyDenied) {
        emit(
          state.copyWith(
            isLoading: false,
            isPermissionGranted: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isPermissionGranted: false,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isPermissionGranted: false,
        ),
      );
    }
  }

}