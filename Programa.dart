import 'dart:io';
import 'dart:math';

void main() {
  int n = 0;
  stdout.write("Numero de discos: ");
  var discos = stdin.readLineSync();

  n = int.parse(discos!);
  Hanoi(n, 1, 2, 3);
  var movimientos = (pow(2, n) - 1);
  print("Movimientos= $movimientos");
}

void Hanoi(int n, int a, b, int c) {
  
  if (n == 1)
    print("Mover disco de $a a $c");
  else {
    Hanoi(n - 1, a, c, b);
    print("Mover disco de $a a $c");
    Hanoi(n - 1, b, a, c);
  }
  
}
