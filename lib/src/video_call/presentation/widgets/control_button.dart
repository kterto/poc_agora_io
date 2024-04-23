import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/color_tokens.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/spacing_tokens.dart';

class ControlButton extends StatelessWidget {
  const ControlButton._({
    super.key,
    required this.color,
    required this.icon,
    required this.iconColor,
    this.muted = false,
    required this.mutedColor,
    required this.mutedIcon,
    required this.mutedIconColor,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final bool muted;
  final Color color;
  final Color mutedColor;
  final IconData icon;
  final IconData mutedIcon;
  final Color iconColor;
  final Color mutedIconColor;

  factory ControlButton.microphone({
    required VoidCallback onPressed,
    required bool muted,
  }) =>
      ControlButton._(
        color: ColorTokens.neutral,
        icon: Icons.mic,
        iconColor: Colors.white,
        mutedColor: ColorTokens.neutral,
        mutedIcon: Icons.mic_off,
        mutedIconColor: Colors.white,
        onPressed: onPressed,
        muted: muted,
      );

  factory ControlButton.cam({
    required VoidCallback onPressed,
    required bool muted,
  }) =>
      ControlButton._(
        color: ColorTokens.neutral,
        icon: Icons.videocam,
        iconColor: Colors.white,
        mutedColor: ColorTokens.neutral,
        mutedIcon: Icons.videocam_off,
        mutedIconColor: Colors.white,
        onPressed: onPressed,
        muted: muted,
      );

  factory ControlButton.call({
    required VoidCallback onPressed,
    required bool muted,
  }) =>
      ControlButton._(
        color: ColorTokens.danger,
        icon: Icons.phone_disabled,
        iconColor: Colors.white,
        mutedColor: ColorTokens.danger,
        mutedIcon: Icons.phone_disabled,
        mutedIconColor: Colors.white,
        onPressed: onPressed,
        muted: muted,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(SpacingTokens.hecto),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: muted ? mutedColor : color,
        ),
        child: Icon(
          muted ? mutedIcon : icon,
          color: muted ? mutedIconColor : iconColor,
        ),
      ),
    );
  }
}
