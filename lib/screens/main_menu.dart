// screens/main_menu_screen.dart

import 'package:cortesapp/screens/corte_screen.dart';
import 'package:flutter/material.dart';


class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Menú Principal'),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido, selecciona una opción',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade700,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _buildMenuCard(
                      context,
                      icon: Icons.power,
                      title: 'Cortes',
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>CortesScreen()));
                      },
                    ),
                    _buildMenuCard(
                      context,
                      icon: Icons.settings_backup_restore,
                      title: 'Reconexión',
                      color: Colors.green,
                      onPressed: () {
                        // Navegar a pantalla de reconexión
                      },
                    ),
                    _buildMenuCard(
                      context,
                      icon: Icons.document_scanner,
                      title: 'Lectura',
                      color: Colors.deepPurple,
                      onPressed: () {
                        // Navegar a pantalla de lectura de medidores
                      },
                    ),
                    _buildMenuCard(
                      context,
                      icon: Icons.exit_to_app,
                      title: 'Salir',
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, {required IconData icon, required String title, required Color color, required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.85),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(2, 4),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
