import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  get limpar => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("::: Calculadora Simples - Rafaela :::"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // texto que mostra o resultado do cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),

            // Campo de texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

            //Campo de Texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o Valor 2"),
              controller: campoValor2,
            ),

            //Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // Nova linha (row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Botão Somar
                new MaterialButton(
                  //child: new Text("+"),

                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: somar,
                ),

                // Botão Subtrair
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),

                // Botão Dividir
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: dividir,
                ),

                // Botão Multiplicação
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                ),
              ],
            ),

            ///espaçamento depois dos botões
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // Botão Limpar
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  } //fecha o método build

  // Atributos
  num num1 = 0;
  num num2 = 0;
  num resultado = 0;

  TextEditingController campoValor1 = new TextEditingController(text: "0");
  TextEditingController campoValor2 = new TextEditingController(text: "0");

  // Métodos
  void somar() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 - num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 / num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 * num2;
    });
  }
}
