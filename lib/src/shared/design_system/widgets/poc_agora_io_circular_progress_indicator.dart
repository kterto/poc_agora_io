import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/color_tokens.dart';

class PocAgoraIoCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final Alignment? alignment;
  const PocAgoraIoCircularProgressIndicator(
      {super.key, this.alignment, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment ?? Alignment.center,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          ColorTokens.primary,
        ),
      ),
    );
  }
}
