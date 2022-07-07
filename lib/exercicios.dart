// ignore_for_file: avoid_print, unnecessary_type_check, unused_local_variable, prefer_const_declarations

mainDartExerciocios(){

  //FEATURES - Tipagem de dados
  int a = 123;
  double b = 3.1;
  bool estaChovedo = false;
  String c = 'String in Flutter';
  var d = 'teste com var';
  dynamic x = 'Teste';
  x = 123;
  x = false;
  final e = 3;
  const f = 4;

  //FEATURES - Listas
  var nomes = ['Vitor', 'Lohaine', 'João'];
  nomes.add('Vinicius');  

  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[1]);

  //FEATURES - Conjuntos
  var conjunto = {0, 1, 2, 3, 4};
  Set<int> conjuntoComSet = {0, 1, 2, 3, 4};
  print(conjunto.length);
  print(conjuntoComSet is Set);
  print(conjunto.fold(0, (previousValue, element) => null));

  //FEATURES - Dicionários
  Map<String, double> notasAlunos = {
    'Vitor': 10.0,
    'Lohaine': 10.0
  };

  for (var key in notasAlunos.keys) {
    print('chave = $key');    
  }

  for (var registro in notasAlunos.entries) {
    print('Aluno ${registro.key} nota: ${registro.value}');
  }  

  // FEATURES - Classes
  //var p1 = Produto(nome: 'Vitor', preco: 2.10);  Exemplo de parametros nomeados
  var p1 = Produto('Vitor', 2.10);
  print("O produto ${p1.nome} tem o preço R\$${p1.preco}");

  print('Primeiro Programa');  
}

//É possível omitir o void e inferir seu tipo(também como dynamic)
somaDynamic(a, b){
  print(a + b);
}

soma(int a, int b){
  return a + b;
}

// É possível passar funções como parametros para outras funções
exec(int a, int b, int Function(int, int) fn){
  return fn(a, b);
}

execTeste(){
  final r = exec(2, 3, (a, b) {
    return a - b;
  });

  print('O resultado é $r');
}

execTeste2 (){
  // Não utilizar chaves quando passado por arrow function, pois o Dart compreende como Set<int> (por exemplo)
  final r = exec(2, 3, (a, b) => ((a * b) + 1000));

  print('O resultado é $r');
}

class Produto {
  String nome;// || String? nome se é permitido null
  double preco;// || double? preco se é permitido null

  Produto(this.nome, this.preco);

  // Produto(String nome, double preco){
  //   this.nome = nome;
  //   this.preco = preco;
  // }

  // Parametros nomeados não precisam seguir a ordem na hora de ser declarados
  //Produto({this.nome, this.preco});
}