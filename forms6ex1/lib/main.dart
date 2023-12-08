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
          title: Text('App Nomes'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Mostrar(),
          ],
        ),
      ),
    );
  }
}

class Mostrar extends StatefulWidget {
  const Mostrar({super.key});

  @override
  State<Mostrar> createState() => _MostrarState();
}

class _MostrarState extends State<Mostrar> {
  TextEditingController nome_botao = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(32)),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(labelText: "Insira Seu nome!"),
          style: TextStyle(fontSize: 20),
          controller: nome_botao,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                name = nome_botao.text;
                print("$name");
              });
            },
            child: Text("Aparecer!")),
        Divider(),
        Text(
          '$name',
          style: TextStyle(fontSize: 30, color: Colors.amberAccent),
        ),
      ],
    );
  }
}
