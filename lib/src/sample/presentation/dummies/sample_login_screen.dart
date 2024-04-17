import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/sample/sample_providers.dart';
import 'package:poc_agora_io/src/shared/design_system/themes/poc_agora_io_text_style.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/color_tokens.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/buttons/poc_agora_io_button.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/poc_agora_io_circular_progress_indicator.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/hero_app_name.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/text_field/poc_agora_io_text_field.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/text_field/poc_agora_io_text_field_controller.dart';
import 'package:poc_agora_io/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:poc_agora_io/src/shared/utils/validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleLoginScreen extends ConsumerStatefulWidget {
  const SampleLoginScreen({super.key});
  @override
  SampleLoginScreenState createState() => SampleLoginScreenState();
}

class SampleLoginScreenState extends ConsumerState<SampleLoginScreen> {
  late final PocAgoraIoTextFieldController passwordController;
  late final PocAgoraIoTextFieldController emailController;
  late final FocusNode passwordFocus;
  @override
  void initState() {
    passwordController = PocAgoraIoTextFieldController(
      "",
      validators: Validators.password,
    );
    emailController = PocAgoraIoTextFieldController(
      "",
      validators: Validators.email,
    );
    passwordFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    try {
      passwordFocus.dispose();
      // ignore: empty_catches
    } catch (e) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key("sample_login_screen"),
      backgroundColor: ColorTokens.neutralLightest,
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.giga,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeroAppName(),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter your ",
                      style: PocAgoraIoTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Email:",
                      style: PocAgoraIoTextStyle.bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              PocAgoraIoTextField(
                key: const Key("email_text_field"),
                hintText: "Email",
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value) => passwordFocus.requestFocus(),
                onChanged: ref
                    .read(SampleProviders.sampleUsecaseProvider.notifier)
                    .onEmailChanged,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter your ",
                      style: PocAgoraIoTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Password:",
                      style: PocAgoraIoTextStyle.bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              PocAgoraIoTextField(
                key: const Key("password_text_field"),
                hintText: "Password",
                focusNode: passwordFocus,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (value) => _onContinuePressed(),
                onChanged: ref
                    .read(SampleProviders.sampleUsecaseProvider.notifier)
                    .onPasswordChaged,
                suffix: SUFFIX.Eye,
              ),
              const SizedBox(
                height: SpacingTokens.exa,
              ),
              ref
                  .watch(SampleProviders.sampleUsecaseProvider)
                  .signInRequestStatus
                  .maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const PocAgoraIoCircularProgressIndicator(),
                  ),
              Visibility(
                visible: ref
                    .watch(SampleProviders.sampleUsecaseProvider)
                    .signInRequestStatus
                    .isLoading,
                child: const SizedBox(
                  height: SpacingTokens.mega,
                ),
              ),
              PocAgoraIoButton(
                key: const Key("sample_continue_button"),
                text: "Continue",
                onPressed: ref
                        .watch(SampleProviders.sampleUsecaseProvider)
                        .signInRequestStatus
                        .isLoading
                    ? null
                    : _onContinuePressed,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    emailController.showValidationState();
    passwordController.showValidationState();
    ref
        .read(SampleProviders.sampleUsecaseProvider.notifier)
        .onContinuePressed();
  }
}
