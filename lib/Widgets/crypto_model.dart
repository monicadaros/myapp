class CryptoModel {
  final String abbreviationCrypto;
  final String nameCrypto;
  final int variationCrypto;
  final int unitCrypto;
  final num valueMoviment;
  final DateTime dateMoviment;

  CryptoModel({
    required this.abbreviationCrypto,
    required this.nameCrypto,
    required this.variationCrypto,
    required this.dateMoviment,
    required this.unitCrypto,
    required this.valueMoviment,
  });
}
