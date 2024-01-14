import 'dart:math';

import 'package:meu_app_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  var nome = 'andre';
  var peso = 100.0;
  var altura = 1.78;
  test('Testa se existe uma classe Pessoa.', () {
    Pessoa pessoa = Pessoa(nome, peso, altura);
    expect(pessoa.nome(), equals(nome.toUpperCase()));
    expect(pessoa.peso(), equals(peso));
    expect(pessoa.altura(), equals(altura));
    expect(pessoa.calculaIMC(), equals(peso/pow(altura, 2)));
  });
}
