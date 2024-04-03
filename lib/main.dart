import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';
import 'package:provider_state_management/provider/theam_changer_provider.dart';
import 'package:provider_state_management/screens/favourite/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final theamchanger = Provider.of<Theamchanger>(context);

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => countprovider()),
          ChangeNotifierProvider(create: (_) => exampleoneprovider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => Theamchanger()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final theamchanger = Provider.of<Theamchanger>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: theamchanger.themeMode,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.blue,
                  appBarTheme: AppBarTheme(backgroundColor: Colors.red)),
              darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.amber,
                  appBarTheme: AppBarTheme(backgroundColor: Colors.amber)),
              home: //countexample(),
                  // exampleonescreen(),
                  favoriteScreen(),
            );
          },
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
