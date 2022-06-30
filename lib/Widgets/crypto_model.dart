class CryptoModel {
  final String abbreviationCrypto;
  final String nameCrypto;
  final String convertCrypto;
  final int variationCrypto;
  final int unitCrypto;
  final num valueMoviment;
  final DateTime dateMoviment;
  final String icon;

  CryptoModel({
    required this.abbreviationCrypto,
    required this.nameCrypto,
    required this.variationCrypto,
    required this.dateMoviment,
    required this.unitCrypto,
    required this.valueMoviment,
    required this.convertCrypto,
    required this.icon,
  });
}
