class SquareRoot {
  // your code here...
  int squareRoot(int numero) {
    if (numero < 0) return 0;
    int esq = 0, direita = numero;
    
    // List<int> limite = [esq, direita];
    int valorCorreto = 0;
    
    for (int i = esq; i <= direita; i++) {
      int valorVez = i;
      if (valorVez * valorVez == numero) {
        valorCorreto = valorVez;
        break;
      }
    }
    
    return valorCorreto;
  }
}