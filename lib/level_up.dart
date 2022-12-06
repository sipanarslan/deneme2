// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class myProject1 extends StatefulWidget {
  const myProject1({super.key});

  @override
  State<myProject1> createState() => _myProject1State();
}

class _myProject1State extends State<myProject1> {
  int _countValue = 0;

  int _level = 0;

  void incrementValue() {
    setState(() {
      _countValue = _countValue + 1;

      if (_countValue == 10) {
        _level = _level + 1;
      } else if (_countValue == 25) {
        _level = _level + 1;
      } else if (_countValue == 50) {
        _level = _level + 1;

        _countValue = 0;
        _level = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: _incrementValue(),
      body: Column(
        children: [
          SizedBox(
              child: Center(
                  child: Column(
            children: [
              Text(
                "Level : $_level",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                _countValue.toString(),
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ))),
        ],
      ),
    );
  }

  FloatingActionButton _incrementValue() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: const Icon(Icons.add),
    );
  }
}
