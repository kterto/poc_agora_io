import 'package:convenience_types/convenience_types.dart';
import 'package:poc_agora_io/src/video_call/domain/models/agora_config_model.dart';

abstract class VideoCallRepository {
  Future<Result<AgoraConfigModel>> getConfig();
}
