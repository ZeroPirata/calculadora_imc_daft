import 'package:imc/functions/imc.dart';
import 'package:test/test.dart';

import 'mock/mock_pessoa.dart';

void main() {
  var testePessoa = MockPessoa("Teste", 80, 1.80);
  test('Calcular o IMC', () {
    expect(imc(testePessoa).floorToDouble(), 24);
  });
  test('Verificar o resultado do calculo', () {
    expect(classificacao(imc(testePessoa).floorToDouble()), "Saudável");
  });
  test('Criação do usuario', () {
    expect(testePessoa.getNome(), 'Teste');
    expect(testePessoa.getPeso(), 80);
    expect(testePessoa.getAltura(), 1.80);
  });
}
