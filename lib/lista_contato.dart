// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:checkpoint2/contato.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);
  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> contatos = [
    Contato("Matheus", "matheus.kraus@gmail.com"),
    Contato("Gabriel", "gabiru@gmail.com"),
    Contato("Klebinho", "klebinho@gmail.com"),
    Contato("Leo", "leo.santana@gmail.com"),
    Contato("Skylab", "rogerio.sky@gmail.com"),
    Contato("Cauan", "caun12@gmail.com")
  ];

   int favoritos () {
    int f = 0;
    for(int i = 0; i<contatos.length; i++){
      if(contatos[i].favorito == true) f++;
    }
    return f;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos favoritos: ${favoritos()}"),),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/15$index? img=?'),
            ),
            title: Text(contatos[index].nomeCompleto),
            subtitle: (Text(contatos[index].email)),
            trailing: IconButton(
             icon: contatos[index].favorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border, color: Colors.red),
              onPressed: () {
                setState(() {
                  contatos[index].favorito ? contatos[index].favorito = false : contatos[index].favorito = true;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

