import 'package:myapp/Shared/themes/app_images.dart';
import 'package:myapp/Widgets/crypto_model.dart';

class DayVariationList {
  final List<CryptoModel> crypto = [
    CryptoModel(
      abbreviationCrypto: "BTC",
      nameCrypto: "Bitcoin",
      variationCrypto: 75,
      dateMoviment: DateTime.now(),
      convertCrypto: "LTC",
      unitCrypto: 1,
      valueMoviment: 50,
      icon: AppIcons.iconBTC,
    ),
    CryptoModel(
        abbreviationCrypto: "LTC",
        nameCrypto: "Litecoin",
        variationCrypto: -15,
        dateMoviment: DateTime.now(),
        convertCrypto: "ETH",
        unitCrypto: 2,
        valueMoviment: 100,
        icon: AppIcons.iconLTC),
    CryptoModel(
      abbreviationCrypto: "ETH",
      nameCrypto: "Etherum",
      variationCrypto: 25,
      dateMoviment: DateTime.now(),
      convertCrypto: "BTC",
      unitCrypto: 15,
      valueMoviment: 150,
      icon: AppIcons.iconETH,
    ),
  ];
}
