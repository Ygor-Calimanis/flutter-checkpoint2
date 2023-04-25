import 'package:flutter/material.dart';

class Contato{
  String nomeCompleto = "";
  String email = "";
  bool favorito = false;

  Contato(String nomeCompleto, String email){
    this.nomeCompleto = nomeCompleto;
    this.email = email;
  }
}