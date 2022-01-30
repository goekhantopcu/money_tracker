import 'package:currency_picker/src/currencies.dart';

class CurrencyCodes {
  static Set<String> findCurrencyCodes() {
    return currencies.map((currency) => currency['code'].toString()).toSet();
  }
}
