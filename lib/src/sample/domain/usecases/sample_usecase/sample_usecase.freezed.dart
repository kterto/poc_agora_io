// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleState {
  SampleFlow get flow => throw _privateConstructorUsedError;
  SampleAction get action => throw _privateConstructorUsedError;
  SignInForm get signInForm => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res, SampleState>;
  @useResult
  $Res call(
      {SampleFlow flow,
      SampleAction action,
      SignInForm signInForm,
      RequestStatus<dynamic> signInRequestStatus});

  $SampleFlowCopyWith<$Res> get flow;
  $SampleActionCopyWith<$Res> get action;
  $SignInFormCopyWith<$Res> get signInForm;
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res, $Val extends SampleState>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
    Object? action = null,
    Object? signInForm = null,
    Object? signInRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SampleFlow,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SampleAction,
      signInForm: null == signInForm
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      signInRequestStatus: null == signInRequestStatus
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleFlowCopyWith<$Res> get flow {
    return $SampleFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleActionCopyWith<$Res> get action {
    return $SampleActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFormCopyWith<$Res> get signInForm {
    return $SignInFormCopyWith<$Res>(_value.signInForm, (value) {
      return _then(_value.copyWith(signInForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.signInRequestStatus,
        (value) {
      return _then(_value.copyWith(signInRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleStateImplCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$SampleStateImplCopyWith(
          _$SampleStateImpl value, $Res Function(_$SampleStateImpl) then) =
      __$$SampleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SampleFlow flow,
      SampleAction action,
      SignInForm signInForm,
      RequestStatus<dynamic> signInRequestStatus});

  @override
  $SampleFlowCopyWith<$Res> get flow;
  @override
  $SampleActionCopyWith<$Res> get action;
  @override
  $SignInFormCopyWith<$Res> get signInForm;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class __$$SampleStateImplCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$SampleStateImpl>
    implements _$$SampleStateImplCopyWith<$Res> {
  __$$SampleStateImplCopyWithImpl(
      _$SampleStateImpl _value, $Res Function(_$SampleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
    Object? action = null,
    Object? signInForm = null,
    Object? signInRequestStatus = null,
  }) {
    return _then(_$SampleStateImpl(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SampleFlow,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SampleAction,
      signInForm: null == signInForm
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      signInRequestStatus: null == signInRequestStatus
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$SampleStateImpl extends _SampleState {
  const _$SampleStateImpl(
      {required this.flow,
      required this.action,
      required this.signInForm,
      required this.signInRequestStatus})
      : super._();

  @override
  final SampleFlow flow;
  @override
  final SampleAction action;
  @override
  final SignInForm signInForm;
  @override
  final RequestStatus<dynamic> signInRequestStatus;

  @override
  String toString() {
    return 'SampleState(flow: $flow, action: $action, signInForm: $signInForm, signInRequestStatus: $signInRequestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStateImpl &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.signInForm, signInForm) ||
                other.signInForm == signInForm) &&
            (identical(other.signInRequestStatus, signInRequestStatus) ||
                other.signInRequestStatus == signInRequestStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, flow, action, signInForm, signInRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStateImplCopyWith<_$SampleStateImpl> get copyWith =>
      __$$SampleStateImplCopyWithImpl<_$SampleStateImpl>(this, _$identity);
}

abstract class _SampleState extends SampleState {
  const factory _SampleState(
          {required final SampleFlow flow,
          required final SampleAction action,
          required final SignInForm signInForm,
          required final RequestStatus<dynamic> signInRequestStatus}) =
      _$SampleStateImpl;
  const _SampleState._() : super._();

  @override
  SampleFlow get flow;
  @override
  SampleAction get action;
  @override
  SignInForm get signInForm;
  @override
  RequestStatus<dynamic> get signInRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$SampleStateImplCopyWith<_$SampleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SampleFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? login,
    TResult? Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(Login value)? login,
    TResult? Function(Home value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleFlowCopyWith<$Res> {
  factory $SampleFlowCopyWith(
          SampleFlow value, $Res Function(SampleFlow) then) =
      _$SampleFlowCopyWithImpl<$Res, SampleFlow>;
}

/// @nodoc
class _$SampleFlowCopyWithImpl<$Res, $Val extends SampleFlow>
    implements $SampleFlowCopyWith<$Res> {
  _$SampleFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashImplCopyWith<$Res> {
  factory _$$SplashImplCopyWith(
          _$SplashImpl value, $Res Function(_$SplashImpl) then) =
      __$$SplashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashImplCopyWithImpl<$Res>
    extends _$SampleFlowCopyWithImpl<$Res, _$SplashImpl>
    implements _$$SplashImplCopyWith<$Res> {
  __$$SplashImplCopyWithImpl(
      _$SplashImpl _value, $Res Function(_$SplashImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashImpl implements Splash {
  const _$SplashImpl();

  @override
  String toString() {
    return 'SampleFlow.splash()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? login,
    TResult? Function()? home,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(Login value)? login,
    TResult? Function(Home value)? home,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements SampleFlow {
  const factory Splash() = _$SplashImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$SampleFlowCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'SampleFlow.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? login,
    TResult? Function()? home,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(Login value)? login,
    TResult? Function(Home value)? home,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements SampleFlow {
  const factory Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$SampleFlowCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeImpl implements Home {
  const _$HomeImpl();

  @override
  String toString() {
    return 'SampleFlow.home()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? login,
    TResult? Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(Login value)? login,
    TResult? Function(Home value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class Home implements SampleFlow {
  const factory Home() = _$HomeImpl;
}

/// @nodoc
mixin _$SampleAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? goToVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToVideoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToVideoCall value) goToVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(GoToVideoCall value)? goToVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToVideoCall value)? goToVideoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleActionCopyWith<$Res> {
  factory $SampleActionCopyWith(
          SampleAction value, $Res Function(SampleAction) then) =
      _$SampleActionCopyWithImpl<$Res, SampleAction>;
}

/// @nodoc
class _$SampleActionCopyWithImpl<$Res, $Val extends SampleAction>
    implements $SampleActionCopyWith<$Res> {
  _$SampleActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$SampleActionCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'SampleAction.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToVideoCall,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? goToVideoCall,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToVideoCall,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToVideoCall value) goToVideoCall,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(GoToVideoCall value)? goToVideoCall,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToVideoCall value)? goToVideoCall,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SampleAction {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$GoToVideoCallImplCopyWith<$Res> {
  factory _$$GoToVideoCallImplCopyWith(
          _$GoToVideoCallImpl value, $Res Function(_$GoToVideoCallImpl) then) =
      __$$GoToVideoCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToVideoCallImplCopyWithImpl<$Res>
    extends _$SampleActionCopyWithImpl<$Res, _$GoToVideoCallImpl>
    implements _$$GoToVideoCallImplCopyWith<$Res> {
  __$$GoToVideoCallImplCopyWithImpl(
      _$GoToVideoCallImpl _value, $Res Function(_$GoToVideoCallImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToVideoCallImpl implements GoToVideoCall {
  const _$GoToVideoCallImpl();

  @override
  String toString() {
    return 'SampleAction.goToVideoCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToVideoCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToVideoCall,
  }) {
    return goToVideoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? goToVideoCall,
  }) {
    return goToVideoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToVideoCall,
    required TResult orElse(),
  }) {
    if (goToVideoCall != null) {
      return goToVideoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToVideoCall value) goToVideoCall,
  }) {
    return goToVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(GoToVideoCall value)? goToVideoCall,
  }) {
    return goToVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToVideoCall value)? goToVideoCall,
    required TResult orElse(),
  }) {
    if (goToVideoCall != null) {
      return goToVideoCall(this);
    }
    return orElse();
  }
}

abstract class GoToVideoCall implements SampleAction {
  const factory GoToVideoCall() = _$GoToVideoCallImpl;
}
