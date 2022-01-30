import 'package:quiver/strings.dart';

enum BillingCycle {
  daily,
  weekly,
  monthly,
  quarterly,
  halfYearly,
  yearly,
  notSet,
}

BillingCycle findBillingCycleByName(String name) {
  try {
    return BillingCycle.values
        .firstWhere((e) => equalsIgnoreCase(e.name, name));
  } catch (error) {
    return BillingCycle.notSet;
  }
}

extension BillingCycleDisplay on BillingCycle {
  String display() {
    switch(this) {
      case BillingCycle.daily: return "Daily";
      case BillingCycle.weekly: return "Weekly";
      case BillingCycle.monthly: return "Monthly";
      case BillingCycle.quarterly: return "Quarterly";
      case BillingCycle.halfYearly: return "Half Yearly";
      case BillingCycle.yearly: return "Yearly";
      case BillingCycle.notSet: return "Unknown";
    }
  }
}