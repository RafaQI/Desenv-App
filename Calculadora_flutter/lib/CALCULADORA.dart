import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
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
              controller: t1,
            ),

            //Campo de Texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o Valor 2"),
              controller: t2,
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
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "0");
  TextEditingController t2 = new TextEditingController(text: "0");

  // Métodos
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  // Atributos
  var num3;
  var num4;
  var result = 0;

  TextEditingController t3 = new TextEditingController(text: "");
  TextEditingController t4 = new TextEditingController(text: "");

  // Métodos
  void subtrair() {
    setState(() {
      num3 = int.parse(t3.text);
      num4 = int.parse(t4.text);
      result = num1 - num2;
    });
  }

  void limpar() {
    setState(() {
      t3.text = "";
      t4.text = "";
      resultado = 0;
    });
  }
} // fecha classe CalculadoraState

// Atributos
var num1;
var num2;
var result = 0;

TextEditingController t1 = new TextEditingController(text: "");
TextEditingController t2 = new TextEditingController(text: "");

// Métodos
void dividir() {
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    result = num1 / num2;
  });
}

void limpar() {
  setState(() {
    t1.text = "";
    t2.text = "";
    result = 0;
  });
}

void setState(Null Function() param0) {}
// fecha classe CalculadoraState

// Atributos
var num5;
var num6;
var resultado = 0;

TextEditingController t5 = new TextEditingController(text: "");
TextEditingController t6 = new TextEditingController(text: "");

// Métodos
void multiplicar() {
  setState(() {
    num5 = int.parse(t5.text);
    num6 = int.parse(t6.text);
    resultado = num1 * num2;
  });
}
