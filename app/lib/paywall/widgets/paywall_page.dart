import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/paywall_type.dart';
import '../data/paywall_service.dart';
import 'detailed_paywall.dart';
import 'simple_paywall.dart';

class PaywallPage extends ConsumerStatefulWidget {
  const PaywallPage({super.key});

  @override
  ConsumerState<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends ConsumerState<PaywallPage> {

  @override
  void initState() {
    super.initState();
    ref.read(paywallServiceProvider).logShowPaywall();
  }

  @override
  Widget build(BuildContext context) {
    final type = ref.watch(paywallTypeProvider);

    return switch (type) {
      PaywallType.detailed => DetailedPaywall(
        onClose: _onClose,
        onActivateTrial: _onActivateTrial,
      ),
      PaywallType.simple => SimplePaywall(
        onClose: _onClose,
        onActivateTrial: _onActivateTrial,
      ),
    };
  }

  void _onClose() {
    ref.read(paywallServiceProvider).logHidePaywall();
  }

  void _onActivateTrial() {
    ref.read(paywallServiceProvider).logActivateTrial();
  }
}
