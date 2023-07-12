import 'package:imc/classes/pessoa.dart';
import 'package:imc/functions/imc.dart' as func;

void mainImc() {
  try {
    Pessoa newPerson = func.createPessoa();
    double imc = func.imc(newPerson).floorToDouble();
    String classificacao = func.classificacao(imc);
    print(func.returnResult(newPerson, classificacao));
  } catch (e) {
    print("Alguma coisa deu errodo: $e");
  }
}
