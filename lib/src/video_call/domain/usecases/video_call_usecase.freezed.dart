// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoCallState {
  VideoCallAction get action => throw _privateConstructorUsedError;
  VideoCallFlow get flow => throw _privateConstructorUsedError;
  Maybe<Map<String, dynamic>> get config => throw _privateConstructorUsedError;
  Maybe<RtcEngine> get agoraEngine => throw _privateConstructorUsedError;
  int get localUid => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get rtcToken => throw _privateConstructorUsedError;
  List<int> get remoteUids => throw _privateConstructorUsedError;
  bool get isJoined => throw _privateConstructorUsedError;
  bool get isBroadcaster => throw _privateConstructorUsedError;
  Maybe<VideoCallEventModel> get event => throw _privateConstructorUsedError;
  RequestStatus<AgoraConfigModel> get agoraConfigRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCallStateCopyWith<VideoCallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallStateCopyWith<$Res> {
  factory $VideoCallStateCopyWith(
          VideoCallState value, $Res Function(VideoCallState) then) =
      _$VideoCallStateCopyWithImpl<$Res, VideoCallState>;
  @useResult
  $Res call(
      {VideoCallAction action,
      VideoCallFlow flow,
      Maybe<Map<String, dynamic>> config,
      Maybe<RtcEngine> agoraEngine,
      int localUid,
      String appId,
      String channelName,
      String rtcToken,
      List<int> remoteUids,
      bool isJoined,
      bool isBroadcaster,
      Maybe<VideoCallEventModel> event,
      RequestStatus<AgoraConfigModel> agoraConfigRequestStatus});

  $VideoCallActionCopyWith<$Res> get action;
  $VideoCallFlowCopyWith<$Res> get flow;
  $MaybeCopyWith<Map<String, dynamic>, $Res> get config;
  $MaybeCopyWith<RtcEngine, $Res> get agoraEngine;
  $MaybeCopyWith<VideoCallEventModel, $Res> get event;
  $RequestStatusCopyWith<AgoraConfigModel, $Res> get agoraConfigRequestStatus;
}

/// @nodoc
class _$VideoCallStateCopyWithImpl<$Res, $Val extends VideoCallState>
    implements $VideoCallStateCopyWith<$Res> {
  _$VideoCallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? flow = null,
    Object? config = null,
    Object? agoraEngine = null,
    Object? localUid = null,
    Object? appId = null,
    Object? channelName = null,
    Object? rtcToken = null,
    Object? remoteUids = null,
    Object? isJoined = null,
    Object? isBroadcaster = null,
    Object? event = null,
    Object? agoraConfigRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VideoCallAction,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as VideoCallFlow,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Maybe<Map<String, dynamic>>,
      agoraEngine: null == agoraEngine
          ? _value.agoraEngine
          : agoraEngine // ignore: cast_nullable_to_non_nullable
              as Maybe<RtcEngine>,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      rtcToken: null == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String,
      remoteUids: null == remoteUids
          ? _value.remoteUids
          : remoteUids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isJoined: null == isJoined
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isBroadcaster: null == isBroadcaster
          ? _value.isBroadcaster
          : isBroadcaster // ignore: cast_nullable_to_non_nullable
              as bool,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Maybe<VideoCallEventModel>,
      agoraConfigRequestStatus: null == agoraConfigRequestStatus
          ? _value.agoraConfigRequestStatus
          : agoraConfigRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<AgoraConfigModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCallActionCopyWith<$Res> get action {
    return $VideoCallActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCallFlowCopyWith<$Res> get flow {
    return $VideoCallFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaybeCopyWith<Map<String, dynamic>, $Res> get config {
    return $MaybeCopyWith<Map<String, dynamic>, $Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaybeCopyWith<RtcEngine, $Res> get agoraEngine {
    return $MaybeCopyWith<RtcEngine, $Res>(_value.agoraEngine, (value) {
      return _then(_value.copyWith(agoraEngine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaybeCopyWith<VideoCallEventModel, $Res> get event {
    return $MaybeCopyWith<VideoCallEventModel, $Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<AgoraConfigModel, $Res> get agoraConfigRequestStatus {
    return $RequestStatusCopyWith<AgoraConfigModel, $Res>(
        _value.agoraConfigRequestStatus, (value) {
      return _then(_value.copyWith(agoraConfigRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoCallStateImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$VideoCallStateImplCopyWith(_$VideoCallStateImpl value,
          $Res Function(_$VideoCallStateImpl) then) =
      __$$VideoCallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallAction action,
      VideoCallFlow flow,
      Maybe<Map<String, dynamic>> config,
      Maybe<RtcEngine> agoraEngine,
      int localUid,
      String appId,
      String channelName,
      String rtcToken,
      List<int> remoteUids,
      bool isJoined,
      bool isBroadcaster,
      Maybe<VideoCallEventModel> event,
      RequestStatus<AgoraConfigModel> agoraConfigRequestStatus});

  @override
  $VideoCallActionCopyWith<$Res> get action;
  @override
  $VideoCallFlowCopyWith<$Res> get flow;
  @override
  $MaybeCopyWith<Map<String, dynamic>, $Res> get config;
  @override
  $MaybeCopyWith<RtcEngine, $Res> get agoraEngine;
  @override
  $MaybeCopyWith<VideoCallEventModel, $Res> get event;
  @override
  $RequestStatusCopyWith<AgoraConfigModel, $Res> get agoraConfigRequestStatus;
}

/// @nodoc
class __$$VideoCallStateImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$VideoCallStateImpl>
    implements _$$VideoCallStateImplCopyWith<$Res> {
  __$$VideoCallStateImplCopyWithImpl(
      _$VideoCallStateImpl _value, $Res Function(_$VideoCallStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? flow = null,
    Object? config = null,
    Object? agoraEngine = null,
    Object? localUid = null,
    Object? appId = null,
    Object? channelName = null,
    Object? rtcToken = null,
    Object? remoteUids = null,
    Object? isJoined = null,
    Object? isBroadcaster = null,
    Object? event = null,
    Object? agoraConfigRequestStatus = null,
  }) {
    return _then(_$VideoCallStateImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VideoCallAction,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as VideoCallFlow,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Maybe<Map<String, dynamic>>,
      agoraEngine: null == agoraEngine
          ? _value.agoraEngine
          : agoraEngine // ignore: cast_nullable_to_non_nullable
              as Maybe<RtcEngine>,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      rtcToken: null == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String,
      remoteUids: null == remoteUids
          ? _value._remoteUids
          : remoteUids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isJoined: null == isJoined
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isBroadcaster: null == isBroadcaster
          ? _value.isBroadcaster
          : isBroadcaster // ignore: cast_nullable_to_non_nullable
              as bool,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Maybe<VideoCallEventModel>,
      agoraConfigRequestStatus: null == agoraConfigRequestStatus
          ? _value.agoraConfigRequestStatus
          : agoraConfigRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<AgoraConfigModel>,
    ));
  }
}

/// @nodoc

class _$VideoCallStateImpl extends _VideoCallState {
  const _$VideoCallStateImpl(
      {required this.action,
      required this.flow,
      required this.config,
      required this.agoraEngine,
      required this.localUid,
      required this.appId,
      required this.channelName,
      required this.rtcToken,
      required final List<int> remoteUids,
      required this.isJoined,
      required this.isBroadcaster,
      required this.event,
      required this.agoraConfigRequestStatus})
      : _remoteUids = remoteUids,
        super._();

  @override
  final VideoCallAction action;
  @override
  final VideoCallFlow flow;
  @override
  final Maybe<Map<String, dynamic>> config;
  @override
  final Maybe<RtcEngine> agoraEngine;
  @override
  final int localUid;
  @override
  final String appId;
  @override
  final String channelName;
  @override
  final String rtcToken;
  final List<int> _remoteUids;
  @override
  List<int> get remoteUids {
    if (_remoteUids is EqualUnmodifiableListView) return _remoteUids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remoteUids);
  }

  @override
  final bool isJoined;
  @override
  final bool isBroadcaster;
  @override
  final Maybe<VideoCallEventModel> event;
  @override
  final RequestStatus<AgoraConfigModel> agoraConfigRequestStatus;

  @override
  String toString() {
    return 'VideoCallState(action: $action, flow: $flow, config: $config, agoraEngine: $agoraEngine, localUid: $localUid, appId: $appId, channelName: $channelName, rtcToken: $rtcToken, remoteUids: $remoteUids, isJoined: $isJoined, isBroadcaster: $isBroadcaster, event: $event, agoraConfigRequestStatus: $agoraConfigRequestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoCallStateImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.agoraEngine, agoraEngine) ||
                other.agoraEngine == agoraEngine) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.rtcToken, rtcToken) ||
                other.rtcToken == rtcToken) &&
            const DeepCollectionEquality()
                .equals(other._remoteUids, _remoteUids) &&
            (identical(other.isJoined, isJoined) ||
                other.isJoined == isJoined) &&
            (identical(other.isBroadcaster, isBroadcaster) ||
                other.isBroadcaster == isBroadcaster) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(
                    other.agoraConfigRequestStatus, agoraConfigRequestStatus) ||
                other.agoraConfigRequestStatus == agoraConfigRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      flow,
      config,
      agoraEngine,
      localUid,
      appId,
      channelName,
      rtcToken,
      const DeepCollectionEquality().hash(_remoteUids),
      isJoined,
      isBroadcaster,
      event,
      agoraConfigRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoCallStateImplCopyWith<_$VideoCallStateImpl> get copyWith =>
      __$$VideoCallStateImplCopyWithImpl<_$VideoCallStateImpl>(
          this, _$identity);
}

abstract class _VideoCallState extends VideoCallState {
  const factory _VideoCallState(
      {required final VideoCallAction action,
      required final VideoCallFlow flow,
      required final Maybe<Map<String, dynamic>> config,
      required final Maybe<RtcEngine> agoraEngine,
      required final int localUid,
      required final String appId,
      required final String channelName,
      required final String rtcToken,
      required final List<int> remoteUids,
      required final bool isJoined,
      required final bool isBroadcaster,
      required final Maybe<VideoCallEventModel> event,
      required final RequestStatus<AgoraConfigModel>
          agoraConfigRequestStatus}) = _$VideoCallStateImpl;
  const _VideoCallState._() : super._();

  @override
  VideoCallAction get action;
  @override
  VideoCallFlow get flow;
  @override
  Maybe<Map<String, dynamic>> get config;
  @override
  Maybe<RtcEngine> get agoraEngine;
  @override
  int get localUid;
  @override
  String get appId;
  @override
  String get channelName;
  @override
  String get rtcToken;
  @override
  List<int> get remoteUids;
  @override
  bool get isJoined;
  @override
  bool get isBroadcaster;
  @override
  Maybe<VideoCallEventModel> get event;
  @override
  RequestStatus<AgoraConfigModel> get agoraConfigRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$VideoCallStateImplCopyWith<_$VideoCallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoCallFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterVideoCall,
    required TResult Function() videoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterVideoCall,
    TResult? Function()? videoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterVideoCall,
    TResult Function()? videoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterVideoCall value) enterVideoCall,
    required TResult Function(VideoCall value) videoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterVideoCall value)? enterVideoCall,
    TResult? Function(VideoCall value)? videoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterVideoCall value)? enterVideoCall,
    TResult Function(VideoCall value)? videoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallFlowCopyWith<$Res> {
  factory $VideoCallFlowCopyWith(
          VideoCallFlow value, $Res Function(VideoCallFlow) then) =
      _$VideoCallFlowCopyWithImpl<$Res, VideoCallFlow>;
}

/// @nodoc
class _$VideoCallFlowCopyWithImpl<$Res, $Val extends VideoCallFlow>
    implements $VideoCallFlowCopyWith<$Res> {
  _$VideoCallFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnterVideoCallImplCopyWith<$Res> {
  factory _$$EnterVideoCallImplCopyWith(_$EnterVideoCallImpl value,
          $Res Function(_$EnterVideoCallImpl) then) =
      __$$EnterVideoCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterVideoCallImplCopyWithImpl<$Res>
    extends _$VideoCallFlowCopyWithImpl<$Res, _$EnterVideoCallImpl>
    implements _$$EnterVideoCallImplCopyWith<$Res> {
  __$$EnterVideoCallImplCopyWithImpl(
      _$EnterVideoCallImpl _value, $Res Function(_$EnterVideoCallImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterVideoCallImpl implements EnterVideoCall {
  const _$EnterVideoCallImpl();

  @override
  String toString() {
    return 'VideoCallFlow.enterVideoCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterVideoCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterVideoCall,
    required TResult Function() videoCall,
  }) {
    return enterVideoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterVideoCall,
    TResult? Function()? videoCall,
  }) {
    return enterVideoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterVideoCall,
    TResult Function()? videoCall,
    required TResult orElse(),
  }) {
    if (enterVideoCall != null) {
      return enterVideoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterVideoCall value) enterVideoCall,
    required TResult Function(VideoCall value) videoCall,
  }) {
    return enterVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterVideoCall value)? enterVideoCall,
    TResult? Function(VideoCall value)? videoCall,
  }) {
    return enterVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterVideoCall value)? enterVideoCall,
    TResult Function(VideoCall value)? videoCall,
    required TResult orElse(),
  }) {
    if (enterVideoCall != null) {
      return enterVideoCall(this);
    }
    return orElse();
  }
}

abstract class EnterVideoCall implements VideoCallFlow {
  const factory EnterVideoCall() = _$EnterVideoCallImpl;
}

/// @nodoc
abstract class _$$VideoCallImplCopyWith<$Res> {
  factory _$$VideoCallImplCopyWith(
          _$VideoCallImpl value, $Res Function(_$VideoCallImpl) then) =
      __$$VideoCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoCallImplCopyWithImpl<$Res>
    extends _$VideoCallFlowCopyWithImpl<$Res, _$VideoCallImpl>
    implements _$$VideoCallImplCopyWith<$Res> {
  __$$VideoCallImplCopyWithImpl(
      _$VideoCallImpl _value, $Res Function(_$VideoCallImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoCallImpl implements VideoCall {
  const _$VideoCallImpl();

  @override
  String toString() {
    return 'VideoCallFlow.videoCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterVideoCall,
    required TResult Function() videoCall,
  }) {
    return videoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterVideoCall,
    TResult? Function()? videoCall,
  }) {
    return videoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterVideoCall,
    TResult Function()? videoCall,
    required TResult orElse(),
  }) {
    if (videoCall != null) {
      return videoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterVideoCall value) enterVideoCall,
    required TResult Function(VideoCall value) videoCall,
  }) {
    return videoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterVideoCall value)? enterVideoCall,
    TResult? Function(VideoCall value)? videoCall,
  }) {
    return videoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterVideoCall value)? enterVideoCall,
    TResult Function(VideoCall value)? videoCall,
    required TResult orElse(),
  }) {
    if (videoCall != null) {
      return videoCall(this);
    }
    return orElse();
  }
}

abstract class VideoCall implements VideoCallFlow {
  const factory VideoCall() = _$VideoCallImpl;
}

/// @nodoc
mixin _$VideoCallAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_PopFlow value) popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_PopFlow value)? popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_PopFlow value)? popFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallActionCopyWith<$Res> {
  factory $VideoCallActionCopyWith(
          VideoCallAction value, $Res Function(VideoCallAction) then) =
      _$VideoCallActionCopyWithImpl<$Res, VideoCallAction>;
}

/// @nodoc
class _$VideoCallActionCopyWithImpl<$Res, $Val extends VideoCallAction>
    implements $VideoCallActionCopyWith<$Res> {
  _$VideoCallActionCopyWithImpl(this._value, this._then);

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
    extends _$VideoCallActionCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'VideoCallAction.idle()';
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
    required TResult Function() popFlow,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? popFlow,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
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
    required TResult Function(_PopFlow value) popFlow,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_PopFlow value)? popFlow,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_PopFlow value)? popFlow,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements VideoCallAction {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$PopFlowImplCopyWith<$Res> {
  factory _$$PopFlowImplCopyWith(
          _$PopFlowImpl value, $Res Function(_$PopFlowImpl) then) =
      __$$PopFlowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopFlowImplCopyWithImpl<$Res>
    extends _$VideoCallActionCopyWithImpl<$Res, _$PopFlowImpl>
    implements _$$PopFlowImplCopyWith<$Res> {
  __$$PopFlowImplCopyWithImpl(
      _$PopFlowImpl _value, $Res Function(_$PopFlowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopFlowImpl implements _PopFlow {
  const _$PopFlowImpl();

  @override
  String toString() {
    return 'VideoCallAction.popFlow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopFlowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
  }) {
    return popFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? popFlow,
  }) {
    return popFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    required TResult orElse(),
  }) {
    if (popFlow != null) {
      return popFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_PopFlow value) popFlow,
  }) {
    return popFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_PopFlow value)? popFlow,
  }) {
    return popFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_PopFlow value)? popFlow,
    required TResult orElse(),
  }) {
    if (popFlow != null) {
      return popFlow(this);
    }
    return orElse();
  }
}

abstract class _PopFlow implements VideoCallAction {
  const factory _PopFlow() = _$PopFlowImpl;
}
