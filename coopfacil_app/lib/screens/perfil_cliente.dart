import 'package:flutter/material.dart';

class PerfilClienteScreen extends StatelessWidget {
  final Map<String, dynamic> cliente = {
    "nombres": "Carlos Alberto",
    "apellidos": "Pérez López",
    "DNI": "123456789",
    "fechaCreacion": "2022-01-15",
    "estado": "Activo",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Cliente'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green[200],
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${cliente['nombres']} ${cliente['apellidos']}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('DNI: ${cliente['DNI']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Estado: ${cliente['estado']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text(
              'Fecha de Creación: ${cliente['fechaCreacion']}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
