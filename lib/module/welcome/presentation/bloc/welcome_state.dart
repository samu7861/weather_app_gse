part of 'welcome_bloc.dart';

@freezed
class WelcomeState with _$WelcomeState {

  WelcomeState._();

  factory WelcomeState({
    required bool isLoading,
    bool? isPermissionGranted,
    Position? position

  }) = _WelcomeState;

  factory WelcomeState.initial() => WelcomeState(
    isLoading: false,
    isPermissionGranted: false,
    position: null
  );
}
