import 'package:myapp/Widgets/model_crypto.dart';

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

class InfoDetailsPage {
  String detailCrypto;
  InfoDetailsPage({required this.detailCrypto});
}
