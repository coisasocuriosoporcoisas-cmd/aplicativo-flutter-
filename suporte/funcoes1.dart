

void exibirOla(){
  print('ola');
}

void exibirMsgPosicional(String msg){
  print(msg);
}

void exibirMsgNomeado({required String msg}){
  print(msg);
}
bool menorQue5(int numero) => numero > 5;


bool par(int numero) => numero % 2 == 0;

int soma(int n1,int n2) => n1 + n2;

void main(List<String>args){
  exibirOla();
  exibirMsgPosicional('olá');
  exibirMsgNomeado(msg: 'olá');

  print(menorQue5(10));
  print(par(4));
  print(soma( 8, 9));
}
