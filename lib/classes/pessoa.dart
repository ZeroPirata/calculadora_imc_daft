class Pessoa {
  /* Váriaveis */
  late String _nome;
  late double _peso;
  late double _altura;

  /* Constructor */
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  /* Setters */
  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;

  /* Getters */
  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;

  /* Sobrescrita */
  @override
  String toString() {
    return { "Nome": getNome(), "Altura": getAltura(), "Peso": getPeso() }.toString();
  }
}
