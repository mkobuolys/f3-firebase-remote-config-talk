import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../assets/asset_package_image.dart';
import 'loader.dart';

class VideoCallView extends StatefulWidget {
  const VideoCallView({
    required this.camera,
    super.key,
  });

  final CameraDescription camera;

  @override
  State<VideoCallView> createState() => _VideoCallViewState();
}

class _VideoCallViewState extends State<VideoCallView> {
  var _calling = true;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => setState(() => _calling = false),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.center,
          children: [
            _calling
                ? const _CallLoader()
                : const AssetPackageDecorationImage(
                    path: 'assets/cat_video_call.gif',
                  ),
            Positioned(
              top: padding.top + 16.0,
              right: 16.0,
              child: SizedBox(
                height: constraints.maxHeight / 3,
                child: _CameraPreview(camera: widget.camera),
              ),
            ),
            Positioned(
              bottom: padding.bottom + 16.0,
              child: Center(
                child: IconButton.filled(
                  icon: const Icon(Icons.call_end_outlined),
                  iconSize: 32.0,
                  padding: const EdgeInsets.all(16.0),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: Navigator.of(context).pop,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CameraPreview extends StatefulWidget {
  const _CameraPreview({
    required this.camera,
  });

  final CameraDescription camera;

  @override
  State<_CameraPreview> createState() => _CameraPreviewState();
}

class _CameraPreviewState extends State<_CameraPreview> {
  CameraController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(widget.camera, ResolutionPreset.ultraHigh);
    _controller!.initialize().then((_) {
      if (!mounted) return;

      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: ColoredBox(
          color: Colors.grey,
          child: _controller?.value.isInitialized ?? false
              ? CameraPreview(_controller!)
              : const Loader(),
        ),
      ),
    );
  }
}

class _CallLoader extends StatelessWidget {
  const _CallLoader();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Loader(),
          const SizedBox(height: 16.0),
          Text(
            'Calling...',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
