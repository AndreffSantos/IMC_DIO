import 'dart:math';

class Pessoa {
  late final String _nome;
  late final double _peso;
  late final double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  String nome() {
    return _nome.toUpperCase();
  }

  double peso() {
    return _peso;
  }

  double altura() {
    return _altura;
  }

  double calculaIMC() {
    return _peso / pow(_altura, 2);
  }
}