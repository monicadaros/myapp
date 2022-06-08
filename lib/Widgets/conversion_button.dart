import 'package:flutter/material.dart';
import 'package:myapp/Widgets/value_crypto.dart';

class ConvertButton extends StatelessWidget {
  ValueCoin;
  final int buttonName;
  final ValueCoin valueCoin;
  double? qualquerCoisa = 3;
  ConvertButton({
    Key? key,
    required this.buttonName,
    required this.valueCoin,
    this.qualquerCoisa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide.none),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 251, 255)),
                ),
                onPressed: () {
                  // print(dropdownList.selectCoin);
                  // if (dropdownList.selectCoin == "Bitcoin") {
                  //   qualquerCoisa = valueCoin.valueBitcoin * buttonName;
                  //   print(qualquerCoisa);
                  // } else if (dropdownList.selectCoin == "Litecoin") {
                  //   qualquerCoisa = valueCoin.valueLitecoin * buttonName;
                  //   print(qualquerCoisa);
                  // } else if (dropdownList.selectCoin == "Ethereum") {
                  //   qualquerCoisa = valueCoin.valueEthereum * buttonName;
                  //   print(qualquerCoisa);
                  // }
                },
                child: Text(buttonName.toString())),
          ),
        ]);
  }
}
