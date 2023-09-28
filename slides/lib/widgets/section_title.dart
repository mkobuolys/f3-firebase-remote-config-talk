import 'package:flutter/material.dart';

import 'slide_center_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.lessonNumber,
    required this.title,
    super.key,
  });

  final int lessonNumber;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SlideCenterText(
      title: title,
      subtitle: 'Lesson #$lessonNumber',
    );
  }
}
