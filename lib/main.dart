import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/poc_agora_io.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: PocAgoraIo()));
}
