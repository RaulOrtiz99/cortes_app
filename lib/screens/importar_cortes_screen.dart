// screens/importar_cortes_desde_servidor_screen.dart

import 'package:flutter/material.dart';

class ImportarCortesDesdeServidorScreen extends StatefulWidget {
  @override
  _ImportarCortesDesdeServidorScreenState createState() => _ImportarCortesDesdeServidorScreenState();
}

class _ImportarCortesDesdeServidorScreenState extends State<ImportarCortesDesdeServidorScreen> {
  String _rutaSeleccionada = "TODAS LAS RUTAS";
  final List<String> _rutas = ["TODAS LAS RUTAS", "Ruta 1", "Ruta 2", "Ruta 3"];
  final TextEditingController _codigoFijoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Importar Cortes desde el Servidor'),
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
              _buildSelectorRuta(),
              SizedBox(height: 20),
              _buildCodigoFijoInput(),
              SizedBox(height: 20),
              _buildImportarCortesButton(),
              SizedBox(height: 20),
              Expanded(
                child: _buildListaCortes(),
              ),
              SizedBox(height: 20),
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectorRuta() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Seleccionar Ruta a Cortar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal.shade700,
          ),
        ),
        SizedBox(height: 10),
        DropdownButton<String>(
          value: _rutaSeleccionada,
          items: _rutas.map((String ruta) {
            return DropdownMenuItem<String>(
              value: ruta,
              child: Text(
                ruta,
                style: TextStyle(fontSize: 18),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _rutaSeleccionada = newValue ?? "TODAS LAS RUTAS";
            });
          },
          icon: Icon(Icons.arrow_drop_down, color: Colors.teal),
          isExpanded: true,
          style: TextStyle(color: Colors.teal.shade800, fontSize: 18),
        ),
      ],
    );
  }

  Widget _buildCodigoFijoInput() {
    return TextField(
      controller: _codigoFijoController,
      decoration: InputDecoration(
        labelText: 'Código Fijo',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.code, color: Colors.teal),
      ),
    );
  }

  Widget _buildImportarCortesButton() {
    return ElevatedButton.icon(
      onPressed: () {
        // Lógica para importar cortes desde el servidor
      },
      icon: Icon(Icons.cloud_download, color: Colors.white),
      label: Text('Importar Cortes'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Widget _buildListaCortes() {
    // Muestra la lista de puntos a cortar de manera clara y organizada
    return ListView.builder(
      itemCount: 6, // Número ficticio de cortes
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            title: Text(
              'Usuario ${index + 1}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              'C.U.: ${40000 + index}, CF: ${5000 + index * 100}, Latitud: -16.38, Longitud: -60.97',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(
              Icons.location_pin,
              color: Colors.teal,
              size: 35,
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Acción para grabar los cortes
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('Grabar Cortes'),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('Volver al Menú'),
          ),
        ),
      ],
    );
  }
}
