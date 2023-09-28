import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LithuaniaAndLatviaSlide extends FlutterDeckSlideWidget {
  const LithuaniaAndLatviaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/lithuania-and-latvia',
            steps: 6,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  static const _kaunasMarker = Marker(
    markerId: MarkerId('Kaunas'),
    position: LatLng(54.8980333, 23.9033574),
  );
  static const _pragueMarker = Marker(
    markerId: MarkerId('Prague'),
    position: LatLng(50.0754276, 14.4360155),
  );
  static const _rigaMarker = Marker(
    markerId: MarkerId('Riga'),
    position: LatLng(56.9676342, 24.1051619),
  );

  late final Completer<GoogleMapController> _controller;

  final _balticsPosition = const CameraPosition(
    target: LatLng(55.9719813, 23.6137106),
    zoom: 6.5,
  );
  final _countriesPosition = const CameraPosition(
    target: LatLng(53.4239266, 20.3236926),
    zoom: 5.5,
  );
  final _europePosition = const CameraPosition(
    target: LatLng(53.2510849, 15.702543),
    zoom: 4.0,
  );
  var _markers = <Marker>{};

  @override
  void initState() {
    super.initState();

    _controller = Completer<GoogleMapController>();
  }

  Future<void> _goToPosition(CameraPosition position) async {
    final controller = await _controller.future;

    await controller.animateCamera(CameraUpdate.newCameraPosition(position));
  }

  void _showRigaMarker() {
    setState(() => _markers = {..._markers, _rigaMarker});
  }

  void _showKaunasMarker() {
    setState(() => _markers = {..._markers, _kaunasMarker});
  }

  void _showPragueMarker() {
    setState(() => _markers = {..._markers, _pragueMarker});
  }

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (context, stepNumber) {
        if (stepNumber == 2) unawaited(_goToPosition(_countriesPosition));
        if (stepNumber == 3) _showPragueMarker();
        if (stepNumber == 4) _showKaunasMarker();
        if (stepNumber == 5) _showRigaMarker();
        if (stepNumber == 6) unawaited(_goToPosition(_balticsPosition));
      },
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _europePosition,
        markers: _markers,
        onMapCreated: (GoogleMapController controller) => _controller.complete(
          controller,
        ),
        zoomControlsEnabled: false,
      ),
    );
  }
}
