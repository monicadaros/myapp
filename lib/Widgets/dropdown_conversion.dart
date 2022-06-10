import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  final void Function(String) onChangedCrypto;
  const DropdownList({Key? key, required this.onChangedCrypto})
      : super(key: key);

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String selectCrypto = "Bitcoin";

  @override
  Widget build(BuildContext context) {
    final List<String> valueCoin = ['Bitcoin', 'Litecoin', 'Ethereum'];
    return DropdownButton<String>(
      items: [
        DropdownMenuItem(
          child: Text(valueCoin[0]),
          value: valueCoin[0],
        ),
        DropdownMenuItem(
          child: Text(valueCoin[1]),
          value: valueCoin[1],
        ),
        DropdownMenuItem(
          child: Text(valueCoin[2]),
          value: valueCoin[2],
        ),
      ],
      onChanged: (crypto) {
        setState(() {
          selectCrypto = crypto.toString();
        });
        widget.onChangedCrypto(crypto.toString());
      },
      value: selectCrypto,
      hint: Text(selectCrypto),
      borderRadius: const BorderRadius.all(Radius.zero),
      alignment: Alignment.topRight,
    );
  }
}

// class DropdownList extends StatefulWidget {
  
//   VoidCallback setState (){};
//   DropdownList({Key? key, this.selectCoin}) : super(key: key);

//   @override
//   State<DropdownList> createState() => DropdownListState();
// }

// class DropdownListState extends State<DropdownList> {
  // final List<String> valueCoin = ['Bitcoin', 'Litecoin', 'Ethereum'];