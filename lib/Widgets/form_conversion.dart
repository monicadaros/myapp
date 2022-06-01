import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  final List<String> valueCoin = ['Bitcoin', 'Litecoin', 'Etherum'];
  String? selectCoin;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DropdownButton<String>(
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
        onChanged: (value) => setState(() {
          selectCoin = value;
        }),
        value: selectCoin,
        hint: const Text("Moeda"),
        borderRadius: const BorderRadius.all(Radius.zero),
      ),
    );
  }
}
