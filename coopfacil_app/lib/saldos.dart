import 'package:flutter/material.dart';

class SaldosScreen extends StatelessWidget {
  final List<Map<String, String>> saldos = [
    {
      'tipo': 'Ahorros',
      'saldo': 'L. 15,000.00'
    }, //estos son datos ejemplos, luego se manejaran los de la API
    {'tipo': 'Préstamos', 'saldo': 'L. 25,000.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saldos del Cliente'),
        backgroundColor: Color(0xFF00BFAE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: saldos.length,
          itemBuilder: (context, index) {
            final saldo = saldos[index];
            return Card(
              color: Color(0xFFE6F7F3), // Fondo de las tarjetas
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4.0,
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet,
                    color: Color(0xFF00BFAE)),
                title: Text(saldo['tipo']!,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Saldo disponible'),
                trailing: Text(
                  saldo['saldo']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Color(0xFF00BFAE),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
