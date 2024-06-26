import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/text_field/poc_agora_io_text_field_controller.dart';
import 'package:poc_agora_io/src/shared/utils/validators.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

PocAgoraIoTextFieldController usePocAgoraIoTextFieldController({
  String? initialValue,
  bool? dirty,
  bool? touched,
  bool? shouldShowValidationState,
  List<String>? errorMessages,
  List<String? Function(String)> validators = const [],
  String? equalsTo,
  void Function(String)? onChanged,
  List<Object?>? keys,
}) =>
    use(_FluterBaseTextControllerHook(
      initialValue: initialValue,
      dirty: dirty,
      equalsTo: equalsTo,
      errorMessages: errorMessages,
      onChanged: onChanged,
      shouldShowValidationState: shouldShowValidationState,
      touched: touched,
      validators: validators,
      keys: keys,
    ));

class _FluterBaseTextControllerHook
    extends Hook<PocAgoraIoTextFieldController> {
  final String? initialValue;
  final bool? dirty;
  final bool? touched;
  final bool? shouldShowValidationState;
  final List<String>? errorMessages;
  final List<String? Function(String)> validators;
  final String? equalsTo;
  final void Function(String)? onChanged;
  const _FluterBaseTextControllerHook({
    this.initialValue,
    this.dirty,
    this.touched,
    this.shouldShowValidationState,
    this.errorMessages,
    this.equalsTo,
    this.onChanged,
    this.validators = const [],
    super.keys,
  });
  @override
  HookState<PocAgoraIoTextFieldController, _FluterBaseTextControllerHook>
      createState() => _FluterBaseTextControllerHookState();
}

class _FluterBaseTextControllerHookState extends HookState<
    PocAgoraIoTextFieldController, _FluterBaseTextControllerHook> {
  late PocAgoraIoTextFieldController controller;
  @override
  void initHook() {
    super.initHook();
    controller = PocAgoraIoTextFieldController(
      hook.initialValue,
      dirty: hook.dirty ?? false,
      equalsTo: hook.equalsTo,
      errorMessages: hook.errorMessages ?? [GENERIC_MANDATORY_FIELD_MSG],
      onChanged: hook.onChanged,
      shouldShowValidationState: hook.shouldShowValidationState ?? false,
      touched: hook.touched ?? false,
      validators: hook.validators,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  PocAgoraIoTextFieldController build(BuildContext context) {
    return controller;
  }
}
