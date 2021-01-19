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
    double value = double.tryParse(toText.text) ?? 1.0;
    double convertedValue;

    if (fromCurrency.name == 'Brazilian Real') {
      convertedValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'US Dolar') {
      convertedValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      convertedValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      convertedValue = value * toCurrency.bitcoin;
    }
    fromText.text = convertedValue.toStringAsFixed(2);
  }
}
