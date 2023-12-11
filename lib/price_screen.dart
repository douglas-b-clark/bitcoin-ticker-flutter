import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String? selectedCurrency = 'USD';

  String currencyPrices = currenciesHistoricalPrices;

  List<Widget> currencyCardList() {
    List<Widget> cardList = <Widget>[];

    Map currencyPrices = jsonDecode(currenciesHistoricalPrices);

    print('currencyPrices:  ' + currencyPrices.toString());

    for (var currency in currencyPrices['rates']) {
      cardList.add(
        Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 ${currency['asset_id_quote']} = ? $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    return cardList;
  }

  DropdownButton<String> getDropdownButton() {
    return DropdownButton<String>(
      value: selectedCurrency,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
      },
      items: currenciesList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  CupertinoPicker iOSPicker() {
    return CupertinoPicker(
      itemExtent: 40.0,
      onSelectedItemChanged: (int value) {
        setState(() {
          selectedCurrency = currenciesList[value];
          print(TargetPlatform);
        });
      },
      children: List<Widget>.generate(
        currenciesList.length,
        (int index) {
          return Text(currenciesList[index]);
        },
      ),
    );
  }

  getPicker() {
    if (Platform.isIOS) {
      return iOSPicker();
    } else if (Platform.isAndroid) {
      return getDropdownButton();
    } else if (kIsWeb) {
      print("It's web!");
      return getDropdownButton();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: ListView(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: currencyCardList(),
                // Card(
                //   color: Colors.lightBlueAccent,
                //   elevation: 5.0,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   child: Padding(
                //     padding:
                //         EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                //     child: Text(
                //       '1 BTC = ? USD',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontSize: 20.0,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
                // Card(
                //   color: Colors.lightBlueAccent,
                //   elevation: 5.0,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   child: Padding(
                //     padding:
                //         EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                //     child: Text(
                //       '1 BTC = ? USD',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontSize: 20.0,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: 150.0,
            ),
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: iOSPicker(),
          ),
        ],
      ),
    );
  }
}
