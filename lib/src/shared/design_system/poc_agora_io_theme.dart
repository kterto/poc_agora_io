import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/color_tokens.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/generate_material_color.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/typography_tokens.dart';

class PocAgoraIoTheme {
  static ThemeData data(BuildContext context) => ThemeData(
        primarySwatch: generateMaterialColor(ColorTokens.primary),
        textTheme: PocAgoraIoTypographyTokens.buildFontTheme(
          Theme.of(context).textTheme,
        ),
      );
}
