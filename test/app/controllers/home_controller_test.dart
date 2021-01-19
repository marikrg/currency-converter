import 'package:currencyconverter/app/controllers/home_controller.dart';
import 'package:currencyconverter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final fromText = TextEditingController();
  final toText = TextEditingController();

  final homeController = HomeController(fromText: fromText, toText: toText);

  test('Should convert from Brazilian Real to US Dolar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Should convert from US Dolar to Brazilian Real', () {
    toText.text = '1.0';
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
    expect(fromText.text, '5.63');
  });
}
