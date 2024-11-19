part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  HomeState._();

  factory HomeState({
    required bool isLoading,
    bool? hasStarted,
    WeatherEntity? weather,
    Position? position,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        weather: null,
        position: null,
        hasStarted: false,
      );
}
