import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_gse/module/home/domain/repository/ihome_repository.dart';

import '../../domain/entity/weather_entity.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _repository;

  HomeBloc({
    required IHomeRepository repository,
  })  : _repository = repository,
        super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_GetWeather>(_onGetWeather);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    await _onGetWeather(_GetWeather(), emit);

    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onGetWeather(_GetWeather event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    
    try {
      // Obtener la ubicación actual
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      emit(
        state.copyWith(
          isLoading: true,
          position: position,
        ),
      );

      // Obtener el clima basado en la ubicación
      final weather = await _repository.getWeather(position.latitude, position.longitude);

      emit(
        state.copyWith(
          isLoading: true,
          weather: weather,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
    }

    // final weather = _repository.getWeather();
  }
}
