import 'package:money_tracker/model/billing_category.dart';
import 'package:money_tracker/model/billing_cycle.dart';
import 'package:money_tracker/model/billing_type.dart';
import 'package:money_tracker/model/finance_model.dart';

class FinanceService {
  final List<FinanceModel> _mockModels = [
    FinanceModel(
      title: "Netflix",
      expense: 54.99,
      comment: "",
      category: BillingCategory.entertainment,
      type: BillingType.creditCard,
      currencyCode: "TRY",
      billingCycle: BillingCycle.monthly,
    ),
    FinanceModel(
      title: "Apple Music",
      expense: 4.99,
      comment: "",
      category: BillingCategory.entertainment,
      type: BillingType.creditCard,
      currencyCode: "EUR",
      billingCycle: BillingCycle.monthly,
    ),
    FinanceModel(
      title: "iCloud+",
      expense: 2.99,
      comment: "",
      category: BillingCategory.other,
      type: BillingType.creditCard,
      currencyCode: "EUR",
      billingCycle: BillingCycle.monthly,
    ),
    FinanceModel(
      title: "Amazon Prime Video",
      expense: 3.99,
      comment: "",
      category: BillingCategory.other,
      type: BillingType.creditCard,
      currencyCode: "EUR",
      billingCycle: BillingCycle.monthly,
    ),
    FinanceModel(
      title: "congstar",
      expense: 20.00,
      comment: "",
      category: BillingCategory.telephone,
      type: BillingType.creditCard,
      currencyCode: "EUR",
      billingCycle: BillingCycle.monthly,
    ),
    FinanceModel(
      title: "AOK",
      expense: 108.06,
      comment: "",
      category: BillingCategory.insurance,
      type: BillingType.creditCard,
      currencyCode: "EUR",
      billingCycle: BillingCycle.monthly,
    ),
  ];

  Future<List<FinanceModel>> findAllModels() {
    return Future.delayed(const Duration(seconds: 3))
        .then((value) => _mockModels);
  }

  Future<dynamic> doStoreFinance(FinanceModel model) {
    return Future.delayed(const Duration(seconds: 3));
  }

  Future<dynamic> doDeleteFinance(String name) {
    return Future.delayed(const Duration(seconds: 3));
  }
}
