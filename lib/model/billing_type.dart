import 'package:quiver/strings.dart';

enum BillingType {
  paypal,
  creditCard,
  debitCard,
  googlePay,
  giroPay,
  notSet,
}

BillingType findBillingTypeByName(String name) {
  try {
    return BillingType.values.firstWhere((e) => equalsIgnoreCase(e.name, name));
  } catch (error) {
    return BillingType.notSet;
  }
}

extension BillingTypeDisplay on BillingType {
  String display() {
    switch(this) {
      case BillingType.paypal: return "PayPal";
      case BillingType.creditCard: return "Credit Card";
      case BillingType.debitCard: return "Debit Card";
      case BillingType.googlePay: return "GPay";
      case BillingType.giroPay: return "GiroPay";
      case BillingType.notSet: return "Unknown";
    }
  }
}
