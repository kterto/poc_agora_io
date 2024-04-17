import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/typography_tokens.dart';

@immutable
class PocAgoraIoTextStyle {
  final TextStyle style;
  const PocAgoraIoTextStyle._(this.style);
  static PocAgoraIoTextStyle headline1 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.deka,
    ),
  );
  static PocAgoraIoTextStyle headline2 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.yotta,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.hecto,
    ),
  );
  static PocAgoraIoTextStyle headline3 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static PocAgoraIoTextStyle headline4 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.exa,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static PocAgoraIoTextStyle headline5 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.peta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static PocAgoraIoTextStyle headline6 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static PocAgoraIoTextStyle headline7 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static PocAgoraIoTextStyle subtitle1 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static PocAgoraIoTextStyle subtitle2 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.mega,
    ),
  );
  static PocAgoraIoTextStyle bodyText1 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.mega,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static PocAgoraIoTextStyle bodyText2 = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static PocAgoraIoTextStyle button = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.bold,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static PocAgoraIoTextStyle caption = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.hecto,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.peta,
    ),
  );
  static PocAgoraIoTextStyle overline = const PocAgoraIoTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.deka,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.yotta,
    ),
  );
  PocAgoraIoTextStyle get weightLight =>
      PocAgoraIoTextStyle._(style.copyWith(fontWeight: FontWeightTokens.light));
  PocAgoraIoTextStyle get weightRegular => PocAgoraIoTextStyle._(
      style.copyWith(fontWeight: FontWeightTokens.regular));
  PocAgoraIoTextStyle get weightBold =>
      PocAgoraIoTextStyle._(style.copyWith(fontWeight: FontWeightTokens.bold));
}
