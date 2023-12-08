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
          title: Text('Somatorio triplo'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Lista(),
          ],
        ),
      ),
    );
  }
}

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  TextEditingController textofield1 = TextEditingController();
  TextEditingController textofield2 = TextEditingController();
  TextEditingController textofield3 = TextEditingController();
  int somatoria = 0;
  int n1 = 0;
  int n2 = 0;
  int n3 = 0;

  void somar() {
    somatoria == n1 + n2 + n3;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(32)),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "1° Numero"),
          style: TextStyle(fontSize: 20),
          controller: textofield1,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "2° Numero"),
          style: TextStyle(fontSize: 20),
          controller: textofield2,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "3° Numero"),
          style: TextStyle(fontSize: 20),
          controller: textofield3,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                n1 = int.parse(textofield1.text);
                n2 = int.parse(textofield2.text);
                n3 = int.parse(textofield3.text);
                somatoria;

                print("Sua somatoria deu:$somatoria");
              });
            },
            child: Text("somatoriar")),
        Text('$somatoria', style: TextStyle(fontSize: 20, color: Colors.green)),
      ],
    );
  }
}
