import 'package:confetti/confetti.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PurrfectMatchAnnouncementSlide extends FlutterDeckSlideWidget {
  const PurrfectMatchAnnouncementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/purrfect-match-announcement',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
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
  late final ConfettiController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ConfettiController(duration: const Duration(seconds: 1))
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            minBlastForce: 20,
            maxBlastForce: 60,
            numberOfParticles: 30,
          ),
          Text(
            'Purrfect match',
            style: FlutterDeckTheme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: 128, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
