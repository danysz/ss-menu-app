import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/data/outlets.dart';
import 'package:ss_menu/screens/cart_screen.dart';
import 'package:ss_menu/screens/menu_screen.dart';
import 'package:ss_menu/models/app_state.dart';

void main() => runApp(SSMenuApp());

class SSMenuApp extends StatefulWidget {
  @override
  _SSMenuAppState createState() => _SSMenuAppState();
}

class _SSMenuAppState extends State<SSMenuApp> {
  AppState appState = AppState();

  @override
  void initState() {
    super.initState();

    this.appState.setOutlet(dOutlets.keys.first);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => this.appState,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        routes: {
          MenuScreen.id: (context) => MenuScreen(),
          CartScreen.id: (context) => CartScreen(),
        },
        initialRoute: MenuScreen.id,
      ),
    );
  }
}
