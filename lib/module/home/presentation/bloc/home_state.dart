part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  HomeState._();

  factory HomeState({
    required bool isLoading,
    WeatherEntity? weather,
    Position? position,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        weather: null,
        position: null,
      );
}
