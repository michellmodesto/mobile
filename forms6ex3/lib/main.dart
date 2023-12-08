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
          title: Text('Fazer Login SENAI'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Autenticacao(),
          ],
        ),
      ),
    );
  }
}

class Autenticacao extends StatefulWidget {
  const Autenticacao({super.key});

  @override
  State<Autenticacao> createState() => _AutenticacaoState();
}

class _AutenticacaoState extends State<Autenticacao> {
  TextEditingController usuario_texto = TextEditingController();
  TextEditingController senha_texto = TextEditingController();

  String usuario_fixo = 'Senai';
  String senha_fixa = 'mobile23';

  dynamic Color23 = Color.fromARGB(255, 231, 224, 224);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(32)),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(labelText: "Digite o nome usuario"),
          style: TextStyle(fontSize: 20),
          controller: usuario_texto,
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(labelText: "Digite a senha"),
          style: TextStyle(fontSize: 20),
          controller: senha_texto,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (usuario_fixo == usuario_texto.text &&
                    senha_fixa == senha_texto.text) {
                  Color23 = Color.fromARGB(255, 20, 116, 25);
                } else {
                  Color23 = Color.fromARGB(255, 116, 39, 20);
                }

                ;
              });
            },
            child: Text('Enviar')),
        Container(
          width: 300,
          height: 100,
          color: Color23,
          child: Text('Vermelho - Nao autorizado , Verde Autorizado'),
        ),
      ],
    );
  }
}
