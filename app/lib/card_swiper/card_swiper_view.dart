import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../video_call/data/video_call_service.dart';
import '../video_call/widgets/video_call_page.dart';
import 'cat_card.dart';

const _catNames = [
  'Spooky',
  'Sassy',
  'Patches',
  'Tiger',
  'Oreo',
  'Missy',
  'Kitty',
  'Smokey',
  'Simba',
  'Midnight',
  'Lucky',
  'Sammy',
  'Misty',
  'Princess',
  'Rocky',
];

class CardSwiperView extends StatefulWidget {
  const CardSwiperView({super.key});

  @override
  State<CardSwiperView> createState() => _CardSwiperViewState();
}

class _CardSwiperViewState extends State<CardSwiperView> {
  late final CardSwiperController _controller;

  @override
  void initState() {
    super.initState();

    _controller = CardSwiperController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _onApprove() {
    _controller.swipeRight();
  }

  void _onReject() {
    _controller.swipeLeft();
  }

  void _onVideoCall() {
    if (!mounted) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const VideoCallPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final height = constraints.maxHeight * 0.9;
                  final size = Size(height, height + 40);

                  return SizedBox.fromSize(
                    size: size,
                    child: CardSwiper(
                      controller: _controller,
                      cardBuilder: (_, int index, __, ___) => CatCard(
                        imageUrl: 'assets/cats/cat_${index + 1}.jpeg',
                        name: _catNames[index],
                      ),
                      cardsCount: _catNames.length,
                      backCardOffset: Offset(0, size.height * 0.07),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            _CardSwiperActions(
              onApprove: _onApprove,
              onReject: _onReject,
              onVideoCall: _onVideoCall,
            ),
          ],
        ),
      ),
    );
  }
}

class _CardSwiperActions extends ConsumerWidget {
  const _CardSwiperActions({
    required this.onApprove,
    required this.onReject,
    required this.onVideoCall,
  });

  final VoidCallback onApprove;
  final VoidCallback onReject;
  final VoidCallback onVideoCall;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoCallEnabled = ref.watch(videoCallEnabledProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _CardSwiperActionButton(
          color: Colors.red,
          icon: Icons.close_outlined,
          onPressed: onReject,
        ),
        const SizedBox(width: 32.0),
        if (videoCallEnabled)
          _CardSwiperActionButton(
            color: Colors.blueAccent,
            icon: Icons.call,
            onPressed: onVideoCall,
          ),
        const SizedBox(width: 32.0),
        _CardSwiperActionButton(
          color: Colors.green,
          icon: Icons.favorite_outlined,
          onPressed: onApprove,
        ),
      ],
    );
  }
}

class _CardSwiperActionButton extends StatelessWidget {
  const _CardSwiperActionButton({
    required this.color,
    required this.icon,
    required this.onPressed,
  });

  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      icon: Icon(icon),
      iconSize: 32.0,
      padding: const EdgeInsets.all(16.0),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: onPressed,
    );
  }
}
