import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Image.asset(
          'assets/images/pokebola.png',
          fit: BoxFit.cover,
        ),
        middle: Container(
          child: Text(
            'PokeDex',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Monoton',
              fontStyle: FontStyle.italic,
              color: CupertinoColors.systemRed,
            ),
          ),
        ),
        backgroundColor: CupertinoColors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 10,
            child: Image.asset(
              'assets/images/fundo.png',
            ),
          ),
          Container(
            width: double.infinity,
            child: Center(
              child: CupertinoButton(
                color: CupertinoColors.destructiveRed,
                pressedOpacity: 0.7,
                onPressed: () => Get.toNamed('/getconnect'),
                child: Text(
                  'See your pokemons',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SecOne',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
