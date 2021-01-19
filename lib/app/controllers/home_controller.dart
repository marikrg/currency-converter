import 'package:currencyconverter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({this.fromText, this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    print('converting...');
    double value = double.tryParse(toText.text) ?? 1.0;
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
    fromText.text = convertedValue.toStringAsFixed(2);
  }
}
