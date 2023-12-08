import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('App de Listas!'),
              backgroundColor: Colors.amber,
            ),
            body: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Listas('Enviar Relatorio'),
                    Listas('Estudar'),
                    Listas('Enviar Somativa'),
                    Listas('Listas de casa'),
                    Listas('Comprar Roupas'),
                  ],
                ),
              ],
            )));
  }
}

class Listas extends StatefulWidget {
  final String titulo;

  const Listas(this.titulo, {super.key});

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  dynamic Color2 = Colors.white;
  String condicao = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 700,
      color: Color2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tarefa: ${widget.titulo}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Color2 = Colors.blue;
                      condicao = 'Tarefa Pronta';
                    });
                  },
                  child: Icon(Icons.task_alt)),
              Text('$condicao'),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Color2 = Colors.amber;
                      condicao = 'Tarefa em Aberto Novamente!';
                    });
                  },
                  child: Icon(Icons.close)),
              VerticalDivider(),
            ],
          ),
        ],
      ),
    );
  }
}
