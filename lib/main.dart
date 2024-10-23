import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int compteur = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(title: Text("TP Compteur - Décompteur"),),
        body: Center(child: Text("Valeur du compteur => ${compteur}")),
      floatingActionButton:Row(
          mainAxisAlignment: MainAxisAlignment.end,
      children:[
        FloatingActionButton(
          onPressed: () {
            setState(() {
              --compteur;
            });
            print(compteur);
          },
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 8,),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              ++compteur;
            });
            print(compteur);
          },
          child: Icon(Icons.add),
        ),
      ]

      )
    );
  }
}
