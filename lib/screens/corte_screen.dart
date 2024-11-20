// screens/cortes_screen.dart

import 'package:cortesapp/screens/importar_cortes_screen.dart';
import 'package:flutter/material.dart';


class CortesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Cortes'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue.shade100, Colors.lightBlue.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Opciones para el Proceso de Corte',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade700,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    _buildOptionButton(
                      context,
                      title: 'Importar Cortes desde el Servidor',
                      color: Colors.blueAccent,
                      onPressed: () {
                        // Acción de importar cortes
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ImportarCortesDesdeServidorScreen()));
                      },
                    ),
                    _buildOptionButton(
                      context,
                      title: 'Registrar Cortes',
                      color: Colors.green,
                      onPressed: () {
                        // Acción de registrar cortes
                      },
                    ),
                    _buildOptionButton(
                      context,
                      title: 'Exportar Cortes al Servidor',
                      color: Colors.deepPurple,
                      onPressed: () {
                        // Acción de exportar cortes
                      },
                    ),
                    _buildOptionButton(
                      context,
                      title: 'Lista de Cortes Realizados',
                      color: Colors.orange,
                      onPressed: () {
                        // Acción de ver lista de cortes realizados
                      },
                    ),
                    _buildOptionButton(
                      context,
                      title: 'Salir',
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Image.asset(
              //   'assets/images/logo_coosiv.png',
              //   height: 60,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, {required String title, required Color color, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: color.withOpacity(0.85),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
