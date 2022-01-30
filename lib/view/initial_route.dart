import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/model/billing_category.dart';
import 'package:money_tracker/model/billing_cycle.dart';
import 'package:money_tracker/model/billing_type.dart';
import 'package:money_tracker/model/finance_model.dart';
import 'package:money_tracker/model/finance_service.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    final FinanceService financeService = FinanceService();
    final CurrencyService currencyService = CurrencyService();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<List<FinanceModel>>(
          future: financeService.findAllModels(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<FinanceModel> models = snapshot.data!;
              if (models.isEmpty) {
                return const Text(
                  "There are no models",
                  style: TextStyle(color: Colors.red),
                );
              }
              return ListView.builder(
                itemCount: models.length,
                itemBuilder: (context, index) {
                  final model = models[index];
                  final currency =
                      currencyService.findByCode(model.currencyCode);
                  return ListTile(
                    title: Text(
                      model.title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                        "${model.expense}${currency?.symbol ?? "?"} - ${model.billingCycle.display()} - ${model.type.display()}"),
                    trailing: const Icon(
                      CupertinoIcons.chevron_down,
                      size: 15,
                      color: Colors.black,
                    ),
                    leading: Icon(
                      model.category.icon(),
                      size: 20,
                      color: Colors.black,
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Text(
                "Could not load finance models",
                style: TextStyle(color: Colors.red),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
