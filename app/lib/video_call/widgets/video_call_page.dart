import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../assets/asset_package_image.dart';
import '../../firebase/firebase_crashlytics_service.dart';
import '../data/video_call_service.dart';
import 'loader.dart';
import 'video_call_view.dart';

class VideoCallPage extends ConsumerStatefulWidget {
  const VideoCallPage({super.key});

  @override
  ConsumerState<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends ConsumerState<VideoCallPage> {
  late bool _videoCallCrashes;
  CameraDescription? _camera;

  @override
  void initState() {
    super.initState();

    _videoCallCrashes = ref.read(videoCallCrashesProvider);

    if (_videoCallCrashes) {
      final exception = CameraException(
        'Camera not available',
        'Camera is not available on this device.',
      );

      ref.read(firebaseCrashlyticsServiceProvider).recordError(exception);
    }

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => unawaited(_loadCamera()),
    );
  }

  Future<void> _loadCamera() async {
    if (_videoCallCrashes) return;

    final cameras = await availableCameras();

    if (cameras.isEmpty) return;

    final firstCamera = cameras.first;

    if (cameras.length == 1) {
      if (!mounted) return;

      return setState(() => _camera = firstCamera);
    }

    final faceTimeCamera =
        cameras.where((c) => c.name.contains('FaceTime')).firstOrNull;
    final frontCamera = cameras
        .where((c) => c.lensDirection == CameraLensDirection.front)
        .firstOrNull;

    if (!mounted) return;

    setState(() => _camera = faceTimeCamera ?? frontCamera ?? firstCamera);
  }

  @override
  Widget build(BuildContext context) {
    return _videoCallCrashes
        ? const AssetPackageDecorationImage(
            path: 'assets/blue_screen_of_death.png',
            fit: BoxFit.cover,
          )
        : Scaffold(
            backgroundColor: Colors.black,
            body: _camera != null
                ? VideoCallView(camera: _camera!)
                : const Loader(),
          );
  }
}
