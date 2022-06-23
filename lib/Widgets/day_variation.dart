import 'package:myapp/Widgets/crypto_model.dart';

class DayVariationList {
  final List<CryptoModel> crypto = [
    CryptoModel(
        abbreviationCrypto: "BTC",
        nameCrypto: "Bitcoin",
        variationCrypto: 75,
        dateMoviment: DateTime.now(),
        unitCrypto: 1,
        valueMoviment: 50),
    CryptoModel(
      abbreviationCrypto: "LTC",
      nameCrypto: "Litecoin",
      variationCrypto: -15,
      dateMoviment: DateTime.now(),
      unitCrypto: 2,
      valueMoviment: 100,
    ),
    CryptoModel(
      abbreviationCrypto: "ETH",
      nameCrypto: "Etherum",
      variationCrypto: 25,
      dateMoviment: DateTime.now(),
      unitCrypto: 3,
      valueMoviment: 150,
    ),
  ];
}
