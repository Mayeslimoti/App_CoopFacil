import 'package:flutter/material.dart';

class SolicitudesScreen extends StatelessWidget {
  final List<Map<String, String>> solicitudes = [
    {'id': '001', 'tipo': 'Préstamo', 'estado': 'Aprobado'},
    {'id': '002', 'tipo': 'Ahorro', 'estado': 'Pendiente'}, //datos de ejemplo
    {'id': '003', 'tipo': 'Préstamo', 'estado': 'Rechazado'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitudes del Cliente'),
        backgroundColor: Color(0xFF00BFAE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: solicitudes.length,
          itemBuilder: (context, index) {
            final solicitud = solicitudes[index];
            return Card(
              color: Color(0xFFE6F7F3),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFF00BFAE),
                  child: Text(solicitud['id']!),
                ),
                title: Text('${solicitud['tipo']}'),
                subtitle: Text('Estado: ${solicitud['estado']}'),
                trailing: Icon(Icons.arrow_forward, color: Color(0xFF00BFAE)),
                onTap: () {
                  // compañeros aqui podemos redirigir a la pantalla de detalles de solicitud
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
