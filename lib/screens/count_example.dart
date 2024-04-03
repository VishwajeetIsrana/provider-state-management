import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';

class countexample extends StatefulWidget {
  const countexample({super.key});

  @override
  State<countexample> createState() => _countexampleState();
}

class _countexampleState extends State<countexample> {
  @override
  Widget build(BuildContext context) {
    final Countprovider = Provider.of<countprovider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text('Subscribe')),
      ),
      body: Center(child: Consumer<countprovider>(
        builder: (context, value, child) {
          print('only this wiget builds');
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 50),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Countprovider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
