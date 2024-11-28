import 'package:flutter/material.dart';

class SolicitudesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> solicitudes = [
    {
      "proposito": "Compra de Vehículo",
      "monto": 10000.00,
      "estado": "Aprobada",
      "fechaCreacion": "2023-10-15",
    },
    {
      "proposito": "Compra de Equipos",
      "monto": 5000.00,
      "estado": "Pendiente",
      "fechaCreacion": "2023-11-01",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes del Cliente'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: solicitudes.length,
          itemBuilder: (context, index) {
            final solicitud = solicitudes[index];
            return Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(Icons.receipt_long, color: Colors.green),
                title: Text(solicitud['proposito']),
                subtitle: Text(
                    'Monto: \$${solicitud['monto']} - Estado: ${solicitud['estado']}'),
                trailing: Text(solicitud['fechaCreacion']),
              ),
            );
          },
        ),
      ),
    );
  }
}
