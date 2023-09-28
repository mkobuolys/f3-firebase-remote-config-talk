import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_remote_config_service.dart';

part 'video_call_service.g.dart';

@riverpod
VideoCallService videoCallService(VideoCallServiceRef ref) {
  return VideoCallService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
bool videoCallCrashes(VideoCallCrashesRef ref) {
  return ref.watch(videoCallServiceProvider).getVideoCallCrashes();
}

@riverpod
bool videoCallEnabled(VideoCallEnabledRef ref) {
  return ref.watch(videoCallServiceProvider).getVideoCallEnabled();
}

class VideoCallService {
  const VideoCallService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  bool getVideoCallCrashes() {
    return firebaseRemoteConfigService.getVideoCallCrashes();
  }

  bool getVideoCallEnabled() {
    return firebaseRemoteConfigService.getVideoCallEnabled();
  }
}
