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
    on<_GetPosition>(_onGetPosition);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true, hasStarted: true));

    add(const HomeEvent.getPosition());
  }

  FutureOr<void> _onGetPosition(
      _GetPosition event, Emitter<HomeState> emit) async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      emit(state.copyWith(position: position));
      add(const HomeEvent.getWeather());
    } catch (e) {
      emit(
        state.copyWith(error: e.toString(), isLoading: false),
      );
    }
  }

  FutureOr<void> _onGetWeather(
      _GetWeather event, Emitter<HomeState> emit) async {
    try {
      if (state.position != null) {
        final weather = await _repository.getWeather(
            state.position!.latitude, state.position!.longitude);

        emit(state.copyWith(weather: weather, isLoading: false));
      } else {
        emit(state.copyWith(error: 'Position is null'));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }
}
