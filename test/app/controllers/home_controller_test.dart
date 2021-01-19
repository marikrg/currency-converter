import 'package:currencyconverter/app/controllers/home_controller.dart';
import 'package:currencyconverter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final filledValueController = TextEditingController();
  final convertedValueController = TextEditingController();

  final homeController = HomeController(
      filledValueController: filledValueController,
      convertedValueController: convertedValueController);

  test('Should convert from Brazilian Real to US Dolar', () {
    filledValueController.text = '2.0';
    homeController.convert();
    expect(convertedValueController.text, '0.36');
  });

  test('Should convert from US Dolar to Brazilian Real', () {
    filledValueController.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'US Dolar',
        real: 5.63,
        dolar: 1.0,
        euro: 0.85,
        bitcoin: 0.000088);
    homeController.fromCurrency = CurrencyModel(
        name: 'Brazilian Real',
        real: 1.0,
        dolar: 0.18,
        euro: 0.15,
        bitcoin: 0.000016);
    homeController.convert();
    expect(convertedValueController.text, '0.18');
  });
}
