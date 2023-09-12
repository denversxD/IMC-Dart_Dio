import 'dart:ffi';

class imc_cal {
  String? nome = '';
  double peso = 0;
  double altura = 0.0;
  imc_cal (String? nome, double peso, double altura){
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }
}