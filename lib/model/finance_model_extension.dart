import 'package:currency_picker/currency_picker.dart';
import 'package:money_tracker/model/finance_model.dart';

final CurrencyService _service = CurrencyService();

extension on FinanceModel {
  Currency? findCurrency() => _service.findByCode(currencyCode);
}
