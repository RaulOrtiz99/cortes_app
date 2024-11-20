// screens/lista_cortes_screen.dart

import 'package:flutter/material.dart';

class ListaCortesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Cortes Realizados'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número ficticio de cortes
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Corte #$index'),
            subtitle: Text('Estado: ${index % 2 == 0 ? "Cortado" : "No Cortado"}'),
            trailing: Icon(
              index % 2 == 0 ? Icons.check_circle : Icons.error,
              color: index % 2 == 0 ? Colors.green : Colors.orange,
            ),
          );
        },
      ),
    );
  }
}
