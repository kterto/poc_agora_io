import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

class PocAgoraIoTextFieldController extends TextEditingController {
  List<String? Function(String)> validators;
  void Function(String)? onChanged;
  late BehaviorSubject<PocAgoraIoTextFieldControllerState> _subject;
  bool get dirty => _subject.value.dirty;
  bool get touched => _subject.value.touched;
  List<String> get errorMessages => _subject.value.errorMessages;
  Stream<PocAgoraIoTextFieldControllerState> get stream =>
      _subject.stream.shareReplay(maxSize: 1);
  PocAgoraIoTextFieldController(
    String? value, {
    bool dirty = false,
    bool touched = false,
    bool shouldShowValidationState = false,
    List<String> errorMessages = const [GENERIC_MANDATORY_FIELD_MSG],
    this.validators = const [],
    String? equalsTo,
    this.onChanged,
  }) : super(text: value) {
    final initialState = PocAgoraIoTextFieldControllerState(
      dirty: dirty,
      touched: touched,
      shouldShowValidationState: shouldShowValidationState,
      errorMessages: errorMessages,
    );
    _subject = BehaviorSubject.seeded(initialState);
    if (equalsTo != null) {
      validators = [
        ...Validators.password,
        ...Validators.genIsEqual(equalsTo),
      ];
    }
  }
  bool get isValid => dirty && errorMessages.isEmpty == true;
  String? get errorMessage => (isValid) ? null : errorMessages.first;
  markAsTouched() {
    _subject.add(_subject.value.copyWith(touched: true));
  }

  markAsUntouched() {
    _subject.add(_subject.value.copyWith(touched: false));
  }

  markAsDirty() {
    _subject.add(_subject.value.copyWith(dirty: true));
  }

  markAsPristine() {
    _subject.add(_subject.value.copyWith(dirty: false));
  }

  showValidationState() {
    _subject.add(_subject.value.copyWith(shouldShowValidationState: true));
  }

  hideValidationState() {
    _subject.add(_subject.value.copyWith(shouldShowValidationState: false));
  }

  markAsObscuredText() {
    _subject.add(_subject.value.copyWith(obscured: true));
  }

  markAsNotObscuredText() {
    _subject.add(_subject.value.copyWith(obscured: false));
  }

  void updateValidators(List<String? Function(String)> newValidators) {
    validators = newValidators;
  }

  internalOnChanged(String value) {
    final errorMessages = validate(value);
    _subject.add(
      _subject.value.copyWith(
        dirty: true,
        touched: true,
        errorMessages: errorMessages,
      ),
    );
    if (onChanged != null) {
      onChanged!(value);
    }
  }

  List<String> validate(String value) {
    final List<String> errorMsgs = [];
    void action(String? Function(String) v) {
      final errorMessage = v(value);
      if (errorMessage is String) {
        errorMsgs.add(errorMessage);
      }
    }

    validators.forEach(action);
    return errorMsgs;
  }
}

@immutable
class PocAgoraIoTextFieldControllerState {
  final bool dirty;
  final bool touched;
  final bool shouldShowValidationState;
  final List<String> errorMessages;
  final bool obscured;
  bool get isValid => dirty && errorMessages.isEmpty == true;
  String? get errorMessage {
    if (isValid) {
      return null;
    } else if (errorMessages.isNotEmpty) {
      return errorMessages.first;
    }
    return null;
  }

  const PocAgoraIoTextFieldControllerState({
    this.dirty = false,
    this.touched = false,
    this.shouldShowValidationState = false,
    this.errorMessages = const [],
    this.obscured = true,
  });
  PocAgoraIoTextFieldControllerState copyWith({
    bool? dirty,
    bool? touched,
    bool? shouldShowValidationState,
    List<String>? errorMessages,
    bool? obscured,
  }) {
    return PocAgoraIoTextFieldControllerState(
      dirty: dirty ?? this.dirty,
      touched: touched ?? this.touched,
      shouldShowValidationState:
          shouldShowValidationState ?? this.shouldShowValidationState,
      errorMessages: errorMessages ?? this.errorMessages,
      obscured: obscured ?? this.obscured,
    );
  }

  @override
  String toString() {
    return '''{ dirty: $dirty, touched: $touched, shouldShowValidationState: $shouldShowValidationState, errorMessages: $errorMessages, obscured: $obscured, }''';
  }
}
