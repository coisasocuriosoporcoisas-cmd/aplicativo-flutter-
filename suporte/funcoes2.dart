void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8];

  //exibindo os numeros menores da listas
  List<int> menores = numeros.where((int elemento)=> elemento < 5).toList();
  print(menores);

  List<int> pares = numeros.where((int elemento)=> elemento % 2 == 0).toList();
  print(pares);

  int soma = numeros.reduce((int n1, int n2)=> n1 + n2);
  print(soma);


}