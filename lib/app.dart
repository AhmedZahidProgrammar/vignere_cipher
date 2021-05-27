import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vignere_cipher/screen/vignere_cipher_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vignere Cipher",
      home: VignereCipherScreen(),
    );
  }

}