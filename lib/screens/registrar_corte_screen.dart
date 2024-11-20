// screens/registrar_corte_screen.dart

import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/inputs.dart';

class RegistrarCorteScreen extends StatelessWidget {
  final TextEditingController _medidorController = TextEditingController();
  final TextEditingController _observacionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Corte'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InputField(
              controller: _medidorController,
              label: 'Número del Medidor',
            ),
            SizedBox(height: 10),
            InputField(
              controller: _observacionController,
              label: 'Observación',
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Grabar Corte',
              onPressed: () {
                // Guardar información del corte
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              text: 'Volver al Plano',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
