import 'package:flutter/material.dart';

class PerfilClienteScreen extends StatelessWidget {
  final Map<String, String> cliente = {
    'nombre': 'Juan Pérez',
    'correo': 'juan.perez@gmail.com',
    'direccion': 'Calle Principal 123, Ciudad',
    'telefono': '987654321',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil del Cliente'),
        backgroundColor: Color(0xFF00BFAE), // Color principal del mockup
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Información del Cliente',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            buildInfoRow(Icons.person, 'Nombre:', cliente['nombre']!),
            buildInfoRow(Icons.email, 'Correo:', cliente['correo']!),
            buildInfoRow(
                Icons.location_on, 'Dirección:', cliente['direccion']!),
            buildInfoRow(Icons.phone, 'Teléfono:', cliente['telefono']!),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: Color(0xFF00BFAE), size: 24.0), // Color de los iconos
          SizedBox(width: 8.0),
          Text(
            '$label ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Expanded(
            child: Text(value, style: TextStyle(fontSize: 16.0)),
          ),
        ],
      ),
    );
  }
}
