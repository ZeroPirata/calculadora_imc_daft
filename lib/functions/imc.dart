import 'package:imc/classes/pessoa.dart';
import 'package:imc/utils/utils.dart' as utils;

double imc(Pessoa pessoa) {
  return pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
}

Pessoa createPessoa() {
  String nome = utils.stringConsole("Digite seu nome: ");
  double altura = utils.doubleConsole("Digite sua altura: exemplo 1.80");
  double peso = utils.doubleConsole("Digite seu peso: exemplo 68");
  Pessoa newPerson = Pessoa(nome, peso, altura);
  return newPerson;
}

String returnResult(Pessoa pessoa, String classificacao) {
  String nome = pessoa.getNome();
  double altura = pessoa.getAltura();
  double peso = pessoa.getPeso();
  return "Olá $nome, você possui um IMC de '$classificacao', com o peso de $peso e altura $altura";
}

String classificacao(double value) {
  if (value <= 16.00) {
    return "Magreza Grave";
  } else if (value > 16.00 && value <= 17) {
    return "Magreza Moderada";
  } else if (value > 17.00 && value <= 18.5) {
    return "Magreza Leve";
  } else if (value > 18.25 && value <= 25) {
    return "Saudável";
  } else if (value > 25 && value <= 30) {
    return "Obsidade Grau I";
  } else if (value > 35 && value <= 40) {
    return "Obsidade Grau II";
  } else {
    return "Obsidade Grau III";
  }
}
