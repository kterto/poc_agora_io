part of 'sample_usecase.dart';

@freezed
class SampleState with _$SampleState {
  const SampleState._();
  const factory SampleState({
    required SampleFlow flow,
    required SampleAction action,
    required SignInForm signInForm,
    required RequestStatus signInRequestStatus,
  }) = _SampleState;

  factory SampleState.initial() => const SampleState(
        action: _Idle(),
        flow: Splash(),
        signInForm: SignInForm(),
        signInRequestStatus: Idle(),
      );
}

@freezed
class SampleFlow with _$SampleFlow {
  const factory SampleFlow.splash() = Splash;
  const factory SampleFlow.login() = Login;
  const factory SampleFlow.home() = Home;
}

@freezed
class SampleAction with _$SampleAction {
  const factory SampleAction.idle() = _Idle;
  const factory SampleAction.goToVideoCall() = GoToVideoCall;
}
