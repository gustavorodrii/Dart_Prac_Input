import 'dart:io';

main() {
  // Add produtoa

  // Imprimir produto

  // Sair do programar

  final products = [];
  var isRunning = true;

  while (isRunning) {
    print('\x1B[2J\x1B[0;0h');
    print(
        '=== LISTA DE COMPRAS (${products.length}) - comandos [add, imprimir] ===');
    var input = stdin.readLineSync();

    if (input == 'add') {
      print('\x1B[2J\x1B[0;0h');
      print('=== Adicione um produto ===');
      var product = stdin.readLineSync();
      products.add(product);
    } else if (input == 'imprimir') {
      print('\x1B[2J\x1B[0;0h');
      print('=== Todos os produtos cadastrados ===');
      print('\n');
      for (var i = 0; i < products.length; i++) {
        print(products[i]);
      }
      stdin.readLineSync();
    } else {
      isRunning = false;
    }
  }
  print('\x1B[2J\x1B[0;0h');
  print('=== fim do programa ===');
}
