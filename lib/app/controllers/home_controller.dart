import 'package:currencyconverter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController filledValueController;
  final TextEditingController convertedValueController;

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController({this.filledValueController, this.convertedValueController}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    print('converting...');
    double value = double.tryParse(filledValueController.text) ?? 1.0;
    double convertedValue;

    if (toCurrency.name == 'Brazilian Real') {
      convertedValue = value * fromCurrency.real;
    } else if (toCurrency.name == 'US Dolar') {
      convertedValue = value * fromCurrency.dolar;
    } else if (toCurrency.name == 'Euro') {
      convertedValue = value * fromCurrency.euro;
    } else if (toCurrency.name == 'Bitcoin') {
      convertedValue = value * fromCurrency.bitcoin;
    }
    print(convertedValue.toStringAsFixed(2));
    convertedValueController.text = convertedValue.toStringAsFixed(2);
  }
}
