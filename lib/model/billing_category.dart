import 'package:flutter/cupertino.dart';
import 'package:quiver/strings.dart';

enum BillingCategory {
  entertainment,
  insurance,
  vacation,
  telephone,
  tax,
  saving,
  parking,
  food,
  other,
  notSet,
}

BillingCategory findBillingCategoryByName(String name) {
  try {
    return BillingCategory.values
        .firstWhere((e) => equalsIgnoreCase(e.name, name));
  } catch (error) {
    return BillingCategory.notSet;
  }
}

extension BillingCategoryIcon on BillingCategory {
  IconData icon() {
    switch(this) {
      case BillingCategory.entertainment: return CupertinoIcons.videocam_circle;
      case BillingCategory.insurance: return CupertinoIcons.shield_lefthalf_fill;
      case BillingCategory.vacation: return CupertinoIcons.tree;
      case BillingCategory.telephone: return CupertinoIcons.device_phone_portrait;
      case BillingCategory.tax: return CupertinoIcons.money_dollar;
      case BillingCategory.saving: return CupertinoIcons.arrow_up_right;
      case BillingCategory.parking: return CupertinoIcons.car_detailed;
      case BillingCategory.food: return CupertinoIcons.bag_fill;
      case BillingCategory.other: return CupertinoIcons.info;
      case BillingCategory.notSet: return CupertinoIcons.xmark_circle;
    }
  }
}
