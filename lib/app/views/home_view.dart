import 'package:currencyconverter/app/components/currency_box.dart';
import 'package:currencyconverter/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController;
  final filledValueController = TextEditingController();
  final convertedValueController = TextEditingController();

  @override
  initState() {
    super.initState();
    homeController = HomeController(
        filledValueController: filledValueController,
        convertedValueController: convertedValueController);
  }

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
                  CurrencyBox(
                      items: homeController.currencies,
                      controller: filledValueController,
                      selectedItem: homeController.fromCurrency,
                      onChanged: (model) {
                        setState(() {
                          homeController.fromCurrency = model;
                        });
                      }),
                  SizedBox(height: 10),
                  CurrencyBox(
                      items: homeController.currencies,
                      controller: convertedValueController,
                      selectedItem: homeController.toCurrency,
                      onChanged: (model) {
                        homeController.toCurrency = model;
                      }),
                  SizedBox(height: 40),
                  RaisedButton(
                      onPressed: () {
                        homeController.convert();
                      },
                      child: Text('CONVERTER'))
                ]))));
  }
}
