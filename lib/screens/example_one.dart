import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';
import 'package:provider_state_management/screens/dark_theam.dart';

class exampleonescreen extends StatefulWidget {
  const exampleonescreen({super.key});

  @override
  State<exampleonescreen> createState() => _exampleonescreenState();
}

class _exampleonescreenState extends State<exampleonescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("subscribe")),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => darkTheamScreen()));
              },
              child: Icon(Icons.favorite)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<exampleoneprovider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setvalue(val);
                });
          }),
          Consumer<exampleoneprovider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                    child: const Center(child: Text("container one")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)),
                    child: const Center(child: Text("container one")),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
