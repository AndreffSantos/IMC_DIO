import 'package:meu_app_imc/classes/pessoa.dart';
import 'package:meu_app_imc/models/utils.dart';

void main(List<String> arguments) {
  String? nome = Console.lerString(text: 'Insira seu nome.');
  double peso = Console.lerDouble(text: 'Insira seu peso.')!;
  double altura = Console.lerDouble(text: 'Insira sua altura.')!;

  Pessoa pessoa = Pessoa(nome, peso, altura);

  switch (pessoa.calculaIMC()) {
    case < 16:
      print('IMC: ${pessoa.calculaIMC()} Magresa Grave');
      break;
    case (>= 16 && < 17):
      print('IMC: ${pessoa.calculaIMC()} Magresa Moderada');
      break;
    case >= 17 && < 18.5:
      print('IMC: ${pessoa.calculaIMC()} Magresa Leve');
      break;
    case >= 18.5 && < 25:
      print('IMC: ${pessoa.calculaIMC()} Saudável');
      break;
    case >= 25 && < 30:
      print('IMC: ${pessoa.calculaIMC()} Sobrepeso');
      break;
    case >= 30.0 && < 35.0:
      print('IMC: ${pessoa.calculaIMC()} Obesidade');
      break;
    case >= 35 && 40:
      print('IMC: ${pessoa.calculaIMC()} Obesidade Severa');
      break;
    case >= 40:
      print('IMC: ${pessoa.calculaIMC()} Obesidade Mórbida');
      break;
    default:
      break;
  }
}
