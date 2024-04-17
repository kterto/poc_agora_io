import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/shared/design_system/assets/poc_agora_io_images.dart';

class HeroAppName extends StatefulWidget {
  const HeroAppName({Key? key}) : super(key: key);
  @override
  _HeroAppNameState createState() => _HeroAppNameState();
}

class _HeroAppNameState extends State<HeroAppName> {
  final heroTag = 'AppNameHeroTag';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Hero(
      tag: heroTag,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            PocAgoraIoImages.logoAndName,
          ),
          Text(
            'Flutter Base',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
