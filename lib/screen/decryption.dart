import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Decryption extends StatefulWidget{
  final String cipherText;

  const Decryption({Key key, this.cipherText}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _Decryption(cipherText);
  }

}
class _Decryption extends State<Decryption>{
  final String cipherText;
  String _keyValue;
  List _key = [];
  List _plainText = [];
  String plainTextString="";
  _Decryption(this.cipherText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decryption"),
      ),
      body: Column(
        children: [
          Text(cipherText),
          TextField(
            onChanged: (value){
              _keyValue=value;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'no space allow',
              labelText: 'Key',
            ),),
          ElevatedButton(onPressed: (){
            _keyValue.runes.forEach((int rune) {
              var character = new String.fromCharCode(rune);
              _key.add(character);
            });
            getPlainText();
          }, child: Text("Decrypt")),
          Text(plainTextString),
        ],
      ),
    );
  }
void getPlainText(){
  int i = 0;
  cipherText.runes.forEach((int rune) {
    var character = new String.fromCharCode(rune);
    _plainText.add(cipherToPlainText(
        alphabetToNumber(character), alphabetToNumber(_key[i])));
    i++;
    if (i == _key.length) {
      i = 0;
    }
  });
  for(var c in _plainText){
    plainTextString=plainTextString+c;
  }
  setState(() {

  });
}
String cipherToPlainText(int cipher,int key){
    int plain=cipher-key+25;
    plain=plain%25;
    return NumberToAlphabet(plain);
}
  String NumberToAlphabet(int n) {
    switch (n) {
      case 0:
        {
          return 'A';
        }
        break;
      case 1:
        {
          return 'B';
        }
        break;
      case 2:
        {
          return 'C';
        }
        break;
      case 3:
        {
          return 'D';
        }
        break;
      case 4:
        {
          return 'E';
        }
        break;
      case 5:
        {
          return 'F';
        }
        break;
      case 6:
        {
          return 'G';
        }
        break;
      case 7:
        {
          return 'H';
        }
        break;
      case 8:
        {
          return 'I';
        }
        break;
      case 9:
        {
          return 'J';
        }
        break;
      case 10:
        {
          return 'K';
        }
        break;
      case 11:
        {
          return 'L';
        }
        break;
      case 12:
        {
          return 'M';
        }
        break;
      case 13:
        {
          return 'N';
        }
        break;
      case 14:
        {
          return 'O';
        }
        break;
      case 15:
        {
          return 'P';
        }
        break;
      case 16:
        {
          return 'Q';
        }
        break;
      case 17:
        {
          return 'R';
        }
        break;
      case 18:
        {
          return 'S';
        }
        break;
      case 19:
        {
          return 'T';
        }
        break;
      case 20:
        {
          return 'U';
        }
        break;
      case 21:
        {
          return 'V';
        }
        break;
      case 22:
        {
          return 'W';
        }
        break;
      case 23:
        {
          return 'X';
        }
        break;
      case 24:
        {
          return 'Y';
        }
        break;
      case 25:
        {
          return 'Z';
        }
        break;
      default:
        {
          return '-1';
        }
        break;
    }
  }
  int alphabetToNumber(String ch) {
    switch (ch) {
      case "A":
        {
          return 0;
        }
        break;

      case "B":
        {
          return 1;
        }
        break;

      case "C":
        {
          return 2;
        }
        break;

      case "D":
        {
          return 3;
        }
        break;

      case "E":
        {
          return 4;
        }
        break;

      case "F":
        {
          return 5;
        }
        break;

      case "G":
        {
          return 6;
        }
        break;

      case "H":
        {
          return 7;
        }
        break;

      case "I":
        {
          return 8;
        }
        break;

      case "J":
        {
          return 9;
        }
        break;

      case "K":
        {
          return 10;
        }
        break;

      case "L":
        {
          return 11;
        }
        break;

      case "M":
        {
          return 12;
        }
        break;

      case "N":
        {
          return 13;
        }
        break;

      case "O":
        {
          return 14;
        }
        break;

      case "P":
        {
          return 15;
        }
        break;

      case "Q":
        {
          return 16;
        }
        break;

      case "R":
        {
          return 17;
        }
        break;

      case "S":
        {
          return 18;
        }
        break;

      case "T":
        {
          return 19;
        }
        break;

      case "U":
        {
          return 20;
        }
        break;

      case "V":
        {
          return 21;
        }
        break;

      case "W":
        {
          return 22;
        }
        break;

      case "X":
        {
          return 23;
        }
        break;

      case "Y":
        {
          return 24;
        }
        break;

      case "Z":
        {
          return 25;
        }
        break;
      default:
        {
          return -1;
        }
        break;
    }
  }
}