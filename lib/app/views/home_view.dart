import 'package:currencyconverter/app/components/currency_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding:
                    EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
                child: Column(children: [
                  Image.asset('assets/logo.jpeg', width: 100, height: 100),
                  SizedBox(height: 20),
                  CurrencyBox(),
                  SizedBox(height: 10),
                  CurrencyBox(),
                  SizedBox(height: 40),
                  RaisedButton(onPressed: () {}, child: Text('CONVERTER'))
                ]))));
  }
}
