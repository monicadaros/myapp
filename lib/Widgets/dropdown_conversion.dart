import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  String? selectCoin;
  DropdownList({Key? key, this.selectCoin}) : super(key: key);

  @override
  State<DropdownList> createState() => DropdownListState();
}

class DropdownListState extends State<DropdownList> {
  final List<String> valueCoin = ['Bitcoin', 'Litecoin', 'Ethereum'];

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
          widget.selectCoin = value;
        }),
        value: widget.selectCoin,
        hint: const Text("Moeda"),
        borderRadius: const BorderRadius.all(Radius.zero),
        alignment: Alignment.topRight,
      ),
    );
  }
}
