import 'package:flutter/cupertino.dart';
import 'package:myapp/Widgets/crypto_model.dart';

class DayVariationList {
  final List<CryptoModel> crypto = [
    CryptoModel(
        abbreviationCrypto: "BTC", nameCrypto: "Bitcoin", variationCrypto: 75),
    CryptoModel(
        abbreviationCrypto: "LTC",
        nameCrypto: "Litecoin",
        variationCrypto: -15),
    CryptoModel(
        abbreviationCrypto: "ETH", nameCrypto: "Etherum", variationCrypto: 25),
  ];
}
