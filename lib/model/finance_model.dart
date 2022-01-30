import 'package:money_tracker/model/billing_category.dart';
import 'package:money_tracker/model/billing_cycle.dart';
import 'package:money_tracker/model/billing_type.dart';

class FinanceModel {
  String title;
  double expense;
  String comment;
  String currencyCode;
  BillingType type;
  BillingCategory category;
  BillingCycle billingCycle;

  FinanceModel({
    required this.title,
    required this.expense,
    required this.comment,
    required this.category,
    required this.type,
    required this.currencyCode,
    required this.billingCycle,
  });

  FinanceModel.from({required Map<String, dynamic> json})
      : title = json['title'],
        expense = json['expense'],
        comment = json['comment'],
        category = findBillingCategoryByName(json['category']),
        type = findBillingTypeByName(json['type']),
        currencyCode = json['currencyCode'],
        billingCycle = findBillingCycleByName(json['billingCycle']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'expense': expense,
        'comment': comment,
        'category': category.name,
        'type': type.name,
        'currencyCode': currencyCode,
        'billingCycle': billingCycle.name,
      };
}
