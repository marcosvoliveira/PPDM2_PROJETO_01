import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Fatec Ferraz- Controle de Alunos",
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoa = 0;
  String _mensagem = "Pode Entrar!";

  _alteraContador(int i) {
    setState(() {
      _pessoa += i;

      if (_pessoa <= 0) {
        _mensagem = "Não chegou ninguem ainda !";
        _pessoa = 0;
      } else if (_pessoa > 10) {
        _mensagem = "Lotado ! Por Favor, Aguarde !";
      } else {
        _mensagem = "Pode Entrar!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/fatec_ferraz_2.jpg",
          fit: BoxFit.cover,
          height: 900,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_pessoa",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      _alteraContador(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      _alteraContador(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _mensagem,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ), //
          ],
        ),
      ],
    );
  }
}
