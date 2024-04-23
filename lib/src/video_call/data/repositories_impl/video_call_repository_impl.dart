import 'dart:convert';

import 'package:convenience_types/errors/app_error.dart';
import 'package:convenience_types/errors/exceptions.dart';
import 'package:convenience_types/types/result.dart';
import 'package:flutter/services.dart';
import 'package:poc_agora_io/src/video_call/data/entities/agora_config_entity.dart';
import 'package:poc_agora_io/src/video_call/domain/models/agora_config_model.dart';
import 'package:poc_agora_io/src/video_call/domain/repositories/video_call_repository.dart';

class VideoCallRepositoryImpl implements VideoCallRepository {
  @override
  Future<Result<AgoraConfigModel>> getConfig() async {
    try {
      String configString = await rootBundle.loadString(
        'assets/config/agora_config.json',
      );

      return Success(
        AgoraConfigEntity.fromJson(jsonDecode(configString)).toDomain(),
      );
    } on ParseException catch (e) {
      return Failure(EntityNotFitError(slug: e.toString()));
    } catch (e) {
      print("[VideoCallRepositoryImpl][getConfig][exception]: $e");
      return Failure(ParseError(slug: e.toString()));
    }
  }
}
