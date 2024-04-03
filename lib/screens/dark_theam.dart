import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/theam_changer_provider.dart';

class darkTheamScreen extends StatefulWidget {
  const darkTheamScreen({super.key});

  @override
  State<darkTheamScreen> createState() => _darkTheamScreenState();
}

class _darkTheamScreenState extends State<darkTheamScreen> {
  @override
  Widget build(BuildContext context) {
    final theamchanger = Provider.of<Theamchanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Themes")),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: theamchanger.themeMode,
              onChanged: theamchanger.setTheme),
          RadioListTile(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: theamchanger.themeMode,
              onChanged: theamchanger.setTheme),
          RadioListTile(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: theamchanger.themeMode,
              onChanged: theamchanger.setTheme),
          Icon(Icons.favorite)
        ],
      ),
    );
  }
}
