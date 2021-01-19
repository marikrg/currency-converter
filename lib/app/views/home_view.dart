import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: 50, left: 20, right: 20, bottom: 20)),
              Image.asset('assets/logo.jpeg', width: 150, height: 150),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                              height: 55,
                              child: DropdownButton(
                                  isExpanded: true,
                                  underline:
                                      Container(height: 1, color: Colors.amber),
                                  items: [
                                    DropdownMenuItem(
                                        child: Text('Brazilian Real')),
                                    DropdownMenuItem(child: Text('US Dolar'))
                                  ],
                                  onChanged: (value) {}))),
                      SizedBox(width: 10),
                      Expanded(
                          flex: 2,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.amber)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.amber))))),
                    ]),
              ),
              SizedBox(height: 50),
              RaisedButton(onPressed: () {}, child: Text('CONVERTER'))
            ])));
  }
}
