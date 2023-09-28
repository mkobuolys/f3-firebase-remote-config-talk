enum PaywallType {
  simple('simple'),
  detailed('detailed');

  const PaywallType(this.value);

  final String value;

  static PaywallType fromString(String value) {
    return PaywallType.values.firstWhere(
          (e) => e.value == value,
      orElse: () => PaywallType.detailed,
    );
  }
}
