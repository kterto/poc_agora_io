import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/sample/sample_providers.dart';
import 'package:poc_agora_io/src/shared/design_system/assets/poc_agora_io_images.dart';
import 'package:poc_agora_io/src/shared/design_system/themes/app_button_color.dart';
import 'package:poc_agora_io/src/shared/design_system/themes/poc_agora_io_text_style.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:poc_agora_io/src/shared/design_system/widgets/buttons/poc_agora_io_outline_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleHomeScreen extends ConsumerWidget {
  const SampleHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: const Key("sample_home_screen"),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              CircleAvatar(
                radius: SpacingTokens.exa,
                child: Image.asset(
                  PocAgoraIoImages.defaultAvatar,
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SpacingTokens.mega,
                  ),
                  child: ListView(
                    children: [
                      Text(
                        "This is the Capyba Flutter Base sample App.",
                        style: PocAgoraIoTextStyle.bodyText1.style,
                      ),
                      const SizedBox(
                        height: SpacingTokens.mega,
                      ),
                      Text(
                        "* Remember that this is still running with no environment distiction. That's a good place to start.",
                        style: PocAgoraIoTextStyle.bodyText2.style,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: SpacingTokens.mega,
                ),
                child: PocAgoraIoOutlineButton(
                  "Sair",
                  color: AppButtonColor.outline,
                  onPressed: ref
                      .read(SampleProviders.sampleUsecaseProvider.notifier)
                      .started,
                ),
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
}
